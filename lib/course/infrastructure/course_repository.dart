import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';
import 'package:testapp/core/domain/failure.dart';
import 'package:testapp/course/domain/course.dart';
import 'package:testapp/course/infrastructure/course_dto.dart';

class CourseRepository {
  final FirebaseStorage _firebaseStorage;
  final FirebaseFirestore _firebaseFirestore;

  CourseRepository(this._firebaseFirestore, this._firebaseStorage);

  Stream<Either<Failure, List<Course>>> watchAll() async* {
    yield* _firebaseFirestore
        .collection('courses')
        .snapshots()
        .map(
          (snapshot) => right<Failure, List<Course>>(
            snapshot.docs.map((doc) {
              return CourseDTO.fromJson(doc.data()).toDomain();
            }).toList(),
          ),
        )
        .onErrorReturnWith((e, d) {
      if (e is PlatformException && e.code.contains('permission-denied')) {
        return left(const Failure.insufficientPermissions());
      } else {
        return left(const Failure.unexpected());
      }
    });
  }

  Future<Either<Failure, Unit>> create({required Course course}) async {
    try {
      final courseDto = CourseDTO.fromDomain(course);
      await _firebaseFirestore
          .collection("courses")
          .doc(id(course.id))
          .set(courseDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('permission-denied')) {
        return left(const Failure.insufficientPermissions());
      } else {
        return left(const Failure.unexpected());
      }
    } catch (e) {
      return left(const Failure.unexpected());
    }
  }

  Future<Either<Failure, Unit>> update({required Course course}) async {
    try {
      final courseDto = CourseDTO.fromDomain(course);
      await _firebaseFirestore
          .collection("courses")
          .doc(id(course.id))
          .update(courseDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('permission-denied')) {
        return left(const Failure.insufficientPermissions());
      } else {
        return left(const Failure.unexpected());
      }
    } catch (e) {
      return left(const Failure.unexpected());
    }
  }

  Future<Either<Failure, Unit>> delete({required String courseId}) async {
    try {
      await _firebaseFirestore.collection("courses").doc(id(courseId)).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const Failure.insufficientPermissions());
      } else {
        return left(const Failure.unexpected());
      }
    } catch (e) {
      return left(const Failure.unexpected());
    }
  }
}
