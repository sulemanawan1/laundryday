import 'package:go_router/go_router.dart';
import 'package:laundryday/Routes/route_names.dart';
import 'package:laundryday/Routes/route_paths.dart';
import 'package:laundryday/Screens/Addresses/Add%20New%20Address/add_new_address.dart';
import 'package:laundryday/Screens/Addresses/My%20Addresses/my_addresses.dart';
import 'package:laundryday/Screens/Carpets%20Screen/carpet_screen.dart';
import 'package:laundryday/Screens/More%20Screen/more.dart';
import 'package:laundryday/Screens/Service%20Detail/service_detail.dart';
import 'package:laundryday/Screens/Services/services.dart';
import '../Screens/Blankets Screen/blankets_screen.dart';
import '../Screens/HomeScreen/home.dart';
import '../Screens/Login/login.dart';
import '../Screens/Profile/profile.dart';
import '../Screens/Signup/signup.dart';
import '../Screens/Verification/verification.dart';

class AppRoutes {
  final GoRouter routes =
      GoRouter(initialLocation: RoutePaths().login, routes: <RouteBase>[
    GoRoute(
        name: RouteNames().login,
        path: RoutePaths().login,
        builder: (context, state) => Login(),
        routes: [
          // GoRoute(
          //     name: RouteNames().login,
          //     path: RoutePaths().login,
          //     builder: (context, state) => Login()),
          GoRoute(
              name: RouteNames().home,
              path: RoutePaths().home,
              builder: (context, state) => Home()),
          GoRoute(
              name: RouteNames().signUp,
              path: RoutePaths().signUp,
              builder: (context, state) => Signup()),
          GoRoute(
              name: RouteNames().verification,
              path: RoutePaths().verification,
              builder: (context, state) => Verification()),

          GoRoute(
            name: RouteNames().profile,
            path: RoutePaths().profile,
            builder: (context, state) => Profile(),
          ),
          GoRoute(
            name: RouteNames().blanketsScreen,
            path: RoutePaths().blanketsScreen,
            builder: (context, state) => BlanketsScreen(),
          ),
          GoRoute(
            name: RouteNames().carpetsScreen,
            path: RoutePaths().carpetsScreen,
            builder: (context, state) => CarpetScreens(),
          ),

          GoRoute(
            name: RouteNames().more,
            path: RoutePaths().more,
            builder: (context, state) => More(),
          ),

          GoRoute(
            name: RouteNames().services,
            path: RoutePaths().services,
            builder: (context, state) => Services(),
          ),
          GoRoute(
            name: RouteNames().serviceDetail,
            path: RoutePaths().serviceDetail,
            builder: (context, state) => ServiceDetail(),
          ),
          GoRoute(
            name: RouteNames().addNewAddress,
            path: RoutePaths().addNewAddress,
            builder: (context, state) => AddNewAddress(),
          ),
          GoRoute(
            name: RouteNames().myAddresses,
            path: RoutePaths().myAddresses,
            builder: (context, state) => MyAddresses(),
          ),
        ]),
  ]);
}
