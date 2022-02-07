import 'package:auto_route/auto_route.dart';
import 'package:auto_route_trial_self/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                  primary: Colors.blue[900],
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  context.router.push(const HomeRoute());
                },
                child: const Text('Sign Up (to Home)'),
              ),
              TextButton(
                onPressed: () {
                  context.router.navigate(const SignInRoute());
                },
                child: const Text("Already have an account? sign in here!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
