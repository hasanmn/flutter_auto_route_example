import 'package:auto_route/auto_route.dart';
import 'package:auto_route_trial_self/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  context.router.push(const HomeRoute());
                },
                child: const Text('Sign In (to Home)'),
              ),
              TextButton(
                onPressed: () {
                  context.router.navigate(const SignUpRoute());
                },
                child: const Text("Don't have account? sign up here!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
