import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/styles/styles.dart';
//import 'package:flutter_application_1/core/utils/service_locator.dart';
import 'package:flutter_application_1/core/widgets/custom_elevated_button.dart';
import 'package:flutter_application_1/core/widgets/custom_password_text_field.dart';
import 'package:flutter_application_1/core/widgets/custom_text_form_field.dart';
import 'package:flutter_application_1/features/navigation_menu.dart';
//import 'package:flutter_application_1/features/auth/data/repos/auth_repo_impl.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // final AuthRepoImpl _authRepo = getIt.get<AuthRepoImpl>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            textController: _emailController,
            label: 'Email',
            hintText: 'Enter your email',
            warningText: 'Please enter your email!',
          ),
          const SizedBox(height: 15),
          CustomPasswordTextField(
            textController: _passwordController,
            label: 'Password',
            hintText: 'Enter your password',
            warningText: 'Please enter your password!',
          ),
          const SizedBox(height: 20),

          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: const Text('Forgot password?', style: Styles.textStyle16),
            ),
          ),

          const SizedBox(height: 6),

          CustomElevatedButton(
            label: 'Sign in',
            backgroundColor: Colors.blue, // couleur du bouton
            foregroundColor: Colors.white, // couleur du texte
            onPressed: () async {
              final bool isValid = _formKey.currentState!.validate();
              if (isValid) {
                try {
                  // Connexion avec Firebase Auth
                  final userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                        email: _emailController.text.trim(),
                        password: _passwordController.text.trim(),
                      );

                  // Si la connexion est réussie, naviguer vers HomeScreen
                  if (userCredential.user != null) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NavigationMenu(),
                      ),
                    );
                  }
                } on FirebaseAuthException catch (e) {
                  // Gestion des erreurs
                  String message = '';
                  if (e.code == 'user-not-found') {
                    message = 'Utilisateur non trouvé.';
                  } else if (e.code == 'wrong-password') {
                    message = 'Mot de passe incorrect.';
                  } else {
                    message = 'Erreur : ${e.message}';
                  }

                  // Affichage d'un SnackBar pour l'erreur
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(message)));
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
