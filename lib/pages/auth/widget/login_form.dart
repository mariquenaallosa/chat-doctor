import 'package:app_social/widget/primary_button.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40,),
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            prefixIcon: Icon(Icons.alternate_email_rounded),
            fillColor: Theme.of(context).colorScheme.onSecondary,
            filled: true
            
          ),
        ),
        SizedBox(height: 20,),
          TextField(
          decoration: InputDecoration(
            hintText: "Contraseña",
            prefixIcon: Icon(Icons.password_rounded),
            fillColor: Theme.of(context).colorScheme.onSecondary,
            filled: true
            
          ),
        ),
        SizedBox(height: 15,),
        PrimaryButton(btnName: "LOGIN",icon: Icons.lock_open_sharp,)
      ],
    );
  }
}
