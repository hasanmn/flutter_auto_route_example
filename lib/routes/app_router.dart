import 'package:auto_route/auto_route.dart';
import 'package:auto_route_trial_self/auth/signin_page.dart';
import 'package:auto_route_trial_self/auth/signup_page.dart';
import 'package:auto_route_trial_self/books/book_details_page.dart';
import 'package:auto_route_trial_self/books/book_list_page.dart';
import 'package:auto_route_trial_self/home/home_page.dart';
import 'package:auto_route_trial_self/profile/edit_profile_page.dart';
import 'package:auto_route_trial_self/profile/profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SignInPage,
      initial: true,
    ),
    AutoRoute(
      page: SignUpPage,
      path: 'sign-up',
    ),
    AutoRoute(
      path: '/home',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'books',
          name: 'BooksRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: BookListPage),
            AutoRoute(path: 'details', page: BookDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: ProfilePage),
            AutoRoute(path: 'details', page: EditProfilePage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
