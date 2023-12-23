import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';

import '../../Resources/Colors/colors.dart';
import '../../Routes/route_names.dart';
import '../../Widgets/My Button/my_button.dart';
import '../HomeScreen/home_screen.dart';

class Laundries extends StatefulWidget {
  const Laundries({super.key});

  @override
  State<Laundries> createState() => _LaundriesState();
}

class _LaundriesState extends State<Laundries> {
  int _selectedIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_sharp),
            label: 'More',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        backgroundColor: primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.ubuntu(),
        unselectedLabelStyle: GoogleFonts.ubuntu(),
      ),
      drawer: const MyDrawer(),
      appBar: AppBar(
        toolbarHeight: 74,
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Icon(
          Icons.local_laundry_service,
          color: Colors.white,
          size: 50,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag_rounded,
                color: Colors.white,
              ))
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(36), // Adjust the value as needed
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: double.infinity,
              height: 180,
              child: Card(
                elevation: 0,
                color: const Color(0xfff1f4f9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.ph,
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Order from Nearest\nLaundry',
                            style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          20.pw,
                          Image.asset(
                            'assets/order_vector.png',
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34),
                      child: Text(
                        "Clothes, carpets, blankets,\nfurniture's, charity association.",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w400, letterSpacing: 0.8),
                      ),
                    ),
                    14.ph,
                    Center(
                      child: MyButton(
                        elevation: 0,
                        width: 320,
                        name: 'Order Now',
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          10.ph,
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'All Laundries',
              style:
                  GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
          10.ph,
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushNamed(RouteNames().homeScreen);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      child: IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration:
                                  const BoxDecoration(color: Color(0xfff0f5f8)),
                              child: Center(
                                child: Image.asset(
                                  'assets/laundry.png',
                                  width: 80,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    5.ph,
                                    Text(
                                      "Riyadh Laundry 2023",
                                      style: GoogleFonts.ubuntu(
                                          fontWeight: FontWeight.w500),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    10.ph,
                                    Text(
                                      'Near by Riyadh ,AlHazm',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.grey),
                                    ),
                                    5.ph,
                                    Row(
                                      children: [
                                        10.pw,
                                        const Icon(
                                          Icons.place,
                                          size: 12,
                                          color: primaryColor,
                                        ),
                                        5.pw,
                                        Text(
                                          "4km",
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        10.pw,
                                        const Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.amber,
                                        ),
                                        5.pw,
                                        Text(
                                          "4.5",
                                          style: GoogleFonts.ubuntu(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 3) {
        _scaffoldKey.currentState!.openDrawer();
      }
    });
  }
}
