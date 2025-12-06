import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/views/widgets/sign_in_form.dart';

class SigninScreenBody extends StatelessWidget {
  const SigninScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: SignInForm(),
    );
  }
}
