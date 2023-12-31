import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laundryday/Resources/Colors/colors.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';
import 'package:laundryday/Routes/route_names.dart';
import 'package:laundryday/Widgets/My%20App%20bar/my_app_bar.dart';
import 'package:laundryday/Widgets/My%20Heading/heading.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: MyAppBar(
          title: "More",
          isLeading: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Heading(text: ' My Account'),
            20.ph,
            Container(
              decoration: BoxDecoration(
                  color: mediumWhiteColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    trailing: const Icon(Icons.navigate_next),
                    leading: const Icon(Icons.person),
                    title: const Text('My Profile'),
                    onTap: () {
                      // Navigate to the home screen
                      GoRouter.of(context).pushNamed(RouteNames().profile);
                    },
                  ),
                  ListTile(
                    trailing: const Icon(Icons.navigate_next),
                    leading: const Icon(Icons.location_on),
                    title: const Text('Addresses'),
                    onTap: () {
                      // Navigate to the home screen
                      GoRouter.of(context).pushNamed(RouteNames().myAddresses);
                    },
                  ),
                  ListTile(
                    trailing: const Icon(Icons.navigate_next),
                    leading: const Icon(Icons.inventory),
                    title: const Text('My Orders'),
                    onTap: () {
                      // Navigate to the settings screen
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    trailing: const Icon(Icons.navigate_next),
                    leading: const Icon(Icons.language),
                    title: const Text('Languages'),
                    onTap: () {
                      // Navigate to the settings screen
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    trailing: const Icon(Icons.navigate_next),
                    leading: const Icon(Icons.info),
                    title: const Text('About us'),
                    onTap: () {
                      // Navigate to the settings screen
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    trailing: const Icon(Icons.navigate_next),
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                    onTap: () {
                      // Navigate to the about screen
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
