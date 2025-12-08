import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/styles/styles.dart';
import 'package:flutter_application_1/features/auth/presentation/views/signin_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/views/widgets/sign_up_form.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.075),
          Text(
            'Sign up',
            style: Styles.textStyle28.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          const SignUpForm(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Do you have an account?',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(width: 4),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigninScreen(),
                    ),
                  );
                },
                child: const Text('Sign in', style: Styles.textStyle16),
              ),
            ],
          ),

          const SizedBox(height: 4),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       'Don\'t have an account?',
          //       style: Styles.textStyle16.copyWith(
          //         fontWeight: FontWeight.normal,
          //       ),
          //     ),
          //     const SizedBox(width: 4),
          //     TextButton(
          //       onPressed: () {
          //         // TODO: navigate to signup screen
          //       },
          //       child: const Text('Sign up', style: Styles.textStyle16),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
