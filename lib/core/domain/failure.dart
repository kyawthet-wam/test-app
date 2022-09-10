import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.unexpected() = Unexpected;
  const factory Failure.insufficientPermissions() = InsufficientPermissions;
  const factory Failure.unableToUpdate() = UnableToUpdate;
}
