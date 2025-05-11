import 'package:flutter/material.dart';

import '../../../core/theme/app_palette.dart';
import '../widgets/auth_gradient_button.dart';
import '../widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>  {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    formKey.currentState!.validate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Sign In.",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 30,),
              CustomTextFormField(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 15,),
              CustomTextFormField(
                hintText: 'Password',
                controller: passwordController,
                isObscureText: true,
              ),
              const SizedBox(height: 20,),
              AuthGradientButton(
                buttonText: 'Sign In',
                onTab: () {},
              ),
              const SizedBox(height: 20,),
              RichText(
                  text: TextSpan(
                      text: "Don't have any account? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: AppPalette.gradient2,
                              fontWeight: FontWeight.bold,
                            )
                        )
                      ]
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}