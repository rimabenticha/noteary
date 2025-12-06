import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/styles/styles.dart';
import 'package:flutter_application_1/features/auth/presentation/views/widgets/sign_in_form.dart';

class SigninScreenBody extends StatelessWidget {
  const SigninScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.085),

          Text(
            'Sign in',
            style: Styles.textStyle28.copyWith(fontWeight: FontWeight.bold),
          ),

          const SignInForm(),
        ],
      ),
    );
  }
}
