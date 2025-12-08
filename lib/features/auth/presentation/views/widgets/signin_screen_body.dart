import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/styles/styles.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
import 'package:flutter_application_1/features/auth/presentation/views/signup_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/views/widgets/sign_in_form.dart';
import 'package:flutter_application_1/features/navigation_menu.dart';

class SigninScreenBody extends StatelessWidget {
  const SigninScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.075),
          Text(
            'Sign in',
            style: Styles.textStyle28.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Image(
            image: AssetImage(AssetsData.signInIllustration),
            width: 250,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  );
                },
                child: const Text('Sign up', style: Styles.textStyle16),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavigationMenu(),
                    ),
                  );
                },
                child: const Text('Home', style: Styles.textStyle16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
