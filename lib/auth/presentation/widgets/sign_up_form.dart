import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testapp/auth/presentation/widgets/form_text_input.dart';
import 'package:testapp/auth/shared/providers.dart';
import 'package:testapp/core/presentation/validators/form_validators.dart';

class SignUpForm extends ConsumerStatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends ConsumerState<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          FormTextInput(
            label: 'Email',
            icon: Icons.email_rounded,
            validator: FormValidators.emailValidator(),
            controller: _emailController,
          ),
          FormTextInput(
            label: 'Password',
            icon: Icons.lock_outline_rounded,
            secure: true,
            validator: FormValidators.passwordValidator(),
            controller: _passwordController,
          ),
          FormTextInput(
            label: 'Confirm Password',
            icon: Icons.lock_outline_rounded,
            secure: true,
            validator: (val) => FormValidators.passwordMatchValidator()
                .validateMatch(val!, _passwordController.text),
            controller: _confirmPasswordController,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ref
                    .read(authNotifierProvider.notifier)
                    .registerWithEmailAndPassword(
                      _emailController.text,
                      _passwordController.text,
                    );
              }
            },
            child: const Center(
              child: Text('Create an Account'),
            ),
          )
        ],
      ),
    );
  }
}
