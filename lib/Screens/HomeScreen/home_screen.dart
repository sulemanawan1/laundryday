import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';

import '../../Resources/Colors/colors.dart';
import '../../Routes/route_names.dart';
import 'Services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Services> services = [];
  int _currentIndex = 0;
  late CarouselController controller;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List images = [
    'assets/carousel-1.jpg',
    'assets/carousel-2.jpg',
    'assets/carousel-3.jpg',
    'assets/carousel-4.jpg',
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      print(_selectedIndex);
      if (_selectedIndex == 3) {
        _scaffoldKey.currentState!.openDrawer();
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    controller = CarouselController();

    super.initState();
    services.add(
        Services(name: 'Clothing', image: 'assets/homescreen_clothing.jpg'));
    services.add(
        Services(name: 'Blankets', image: 'assets/homescreen_blankets.jpg'));
    services.add(Services(
        name: "Carpets/Furniture's",
        image: 'assets/homescreen_carpets_furniture.jpg'));
    services.add(Services(
        name: 'Charity Association',
        image: 'assets/homescreen_charity_association.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          toolbarHeight: 74,
          centerTitle: true,
          backgroundColor: primaryColor,
          title: Text(
            "Services",
            style: GoogleFonts.ubuntu(),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(36), // Adjust the value as needed
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: _selectedIndex,
        //   onTap: _onItemTapped,
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.inventory),
        //       label: 'Orders',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.local_offer),
        //       label: 'Offers',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.more_horiz_sharp),
        //       label: 'More',
        //     ),
        //   ],
        //   type: BottomNavigationBarType.fixed,
        //   selectedItemColor: Colors.white,
        //   backgroundColor: primaryColor,
        //   unselectedItemColor: Colors.grey,
        //   showUnselectedLabels: true,
        //   selectedLabelStyle: GoogleFonts.ubuntu(),
        //   unselectedLabelStyle: GoogleFonts.ubuntu(),
        // ),
        body: buildHomeScreen());
  }

  Widget buildHomeScreen() {
    return Column(children: [
      10.ph,
      Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CarouselSlider(
            carouselController: controller,
            items: images
                .map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        e.toString(),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              aspectRatio: 2.0,
              viewportFraction: 0.9,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: 10,
            child: DotsIndicator(
              dotsCount: images.length,
              position: _currentIndex,
              decorator: const DotsDecorator(
                color: primaryColor,
                activeColor: Colors.white,
              ),
              onTap: (index) {
                setState(() {
                  controller!.animateToPage(index);
                });
              },
            ),
          ),
        ],
      ),
      20.ph,
      Expanded(
        child: GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              // childAspectRatio: 150 / 180
              mainAxisExtent: 220),
          itemCount: services.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (services[index].name.toString() == 'Blankets') {
                  GoRouter.of(context).pushNamed(RouteNames().blanketsScreen);
                } else if (services[index].name.toString() ==
                    "Carpets/Furniture's") {
                  GoRouter.of(context).pushNamed(RouteNames().carpetsScreen);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 6, // Blur radius
                        offset: const Offset(0, 3), // Offset for the shadow
                      ),
                    ],
                    color: Colors.white),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            services[index].image.toString(),
                            height: 160,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )),
                      10.ph,
                      Text(
                        services[index].name.toString(),
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w500, fontSize: 18),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      )
    ]);
  }

  Widget buildDot(int index) {
    return Container(
      width: 8.0,
      height: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.blue : Colors.grey,
      ),
    );
  }
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () {
              // Navigate to the home screen
              GoRouter.of(context).pushNamed(RouteNames().profile);
            },
          ),
          ListTile(
            leading: const Icon(Icons.inventory),
            title: const Text('My Orders'),
            onTap: () {
              // Navigate to the settings screen
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Service Providers'),
            onTap: () {
              // Navigate to the settings screen
              GoRouter.of(context).pushNamed(RouteNames().serviceProvider);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // Navigate to the about screen
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
