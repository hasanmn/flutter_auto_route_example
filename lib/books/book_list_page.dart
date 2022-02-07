import 'package:auto_route_trial_self/profile/profile_page.dart';
import 'package:auto_route_trial_self/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Book List Page'),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              context.router.navigate(const BookDetailsRoute());
            },
            child: const Text('Go to Detail Page'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              context.navigateTo(
                const ProfileRouter(
                  children: [
                    ProfileRoute(),
                    EditProfileRoute(),
                  ],
                ),
              );
            },
            child: const Text('Go to Edit Profile Page'),
          ),
        ],
      ),
    );
  }
}
