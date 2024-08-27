import 'package:app_social/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

   void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
    }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40,),
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            prefixIcon: const Icon(Icons.alternate_email_rounded),
            fillColor: Theme.of(context).colorScheme.onSecondary,
            filled: true
            
          ),
        ),
        const SizedBox(height: 20,),
          TextField(
            obscureText: _obscured,
          decoration: InputDecoration(
            hintText: "Contraseña",
            prefixIcon: const Icon(Icons.password_rounded),
            fillColor: Theme.of(context).colorScheme.onSecondary,
            filled: true,
            suffixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
              child: GestureDetector(
                onTap: _toggleObscured,
                child: Icon(
                _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
                size: 24,
                )
                )
            )
            
          ),
        ),
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              ontap: () {
                Get.offAllNamed("/home");
              },
              btnName: "LOGIN",icon: Icons.lock_open_sharp,),

          ],
        )
      ],
    );
  }
}
