import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/styles/styles.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
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

          const Image(
            image: AssetImage(AssetsData.signInIllustration),
            width: 200,
          ),

          Text(
            'Sign in',
            style: Styles.textStyle28.copyWith(fontWeight: FontWeight.bold),
          ),

          const SignInForm(),

          const SizedBox(height: 4),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(width: 4),
              TextButton(
                onPressed: () {
                  // TODO: navigate to signup screen
                },
                child: const Text('Sign up', style: Styles.textStyle16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
