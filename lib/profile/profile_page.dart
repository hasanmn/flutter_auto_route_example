import 'package:auto_route_trial_self/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile Page'),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(const EditProfileRoute());
              },
              child: const Text('Edit Profile Page'),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                context.router.navigate(const SignInRoute());
              },
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
