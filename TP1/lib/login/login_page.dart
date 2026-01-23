import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login in or sign up',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const EmailField(),
          ContinueButton(
            onPressed: (){
              print('Le bouton à été cliqué !');
            }
          ),
          const OrSeparator(),
          const SocialLoginButton(),
        ],
      ),
    );
  }
}


class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Champ adresse email');
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key, 
    required this.onPressed, 
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, 
      child: const Text('Bouton Continuer'),
    );
  }
}

class OrSeparator extends StatelessWidget {
  const OrSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Séparateur "Or"');
  }
}

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Bouton Continuer avec');
  }
}