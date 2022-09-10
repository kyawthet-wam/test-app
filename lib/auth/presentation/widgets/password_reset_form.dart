import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testapp/auth/presentation/widgets/email_icon_button.dart';
import 'package:testapp/auth/presentation/widgets/form_text_input.dart';
import 'package:testapp/auth/shared/providers.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';
import 'package:testapp/core/presentation/validators/form_validators.dart';

class PasswordResetForm extends ConsumerStatefulWidget {
  const PasswordResetForm({Key? key}) : super(key: key);

  @override
  _PasswordResetFormState createState() => _PasswordResetFormState();
}

class _PasswordResetFormState extends ConsumerState<PasswordResetForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          FormTextInput(
            controller: _emailController,
            validator: FormValidators.emailValidator(),
            hintText: 'Enter your account email',
            textAlign: TextAlign.center,
            border: const UnderlineInputBorder(),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: CustomColors.mediumRed,
                width: 2,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: CustomColors.mediumYellow,
                width: 2,
              ),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: CustomColors.lightBlue,
                width: 2,
              ),
            ),
          ),
          const SizedBox(height: 20),
          EmailIconButton(
            text: 'Send Reset Email',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ref.read(passwordResetNotifierProvider.notifier).sendResetEmail(
                      _emailController.text,
                    );
              }
            },
          ),
        ],
      ),
    );
  }
}
