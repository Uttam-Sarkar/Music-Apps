import 'package:flutter/material.dart';
import 'package:spotify_clone/auth/view/widgets/auth_gradient_button.dart';
import 'package:spotify_clone/auth/view/widgets/custom_text_form_field.dart';
import 'package:spotify_clone/core/theme/app_palette.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    formKey.currentState!.validate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Sign Up.",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold)
                ),
                const SizedBox(height: 30,),
                CustomTextFormField(
                    hintText: 'Name',
                  controller: nameController,
                ),
                const SizedBox(height: 15,),
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
                  buttonText: 'Sign Up',
                  onTab: () {},
                ),
                const SizedBox(height: 20,),
                RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: 'Sign In',
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
      ),
    );
  }
}
