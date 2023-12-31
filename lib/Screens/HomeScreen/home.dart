import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Screens/More%20Screen/more.dart';
import 'package:laundryday/Screens/Services/services.dart';
import '../../Resources/Colors/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  List<Widget> screens = [Services(), Text("Orders"), Text("Offers"), More()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: whiteColor,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Shadow color
                spreadRadius: 5, // Spread radius
                blurRadius: 6, // Blur radius
                offset: const Offset(0, 3), // Offset for the shadow
              ),
            ],
          ),
          child: BottomNavigationBar(
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
            selectedItemColor: primaryColor,
            backgroundColor: whiteColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            selectedLabelStyle: GoogleFonts.poppins(),
            unselectedLabelStyle: GoogleFonts.poppins(),
          ),
        ),
        body: screens[_selectedIndex]);
  }
}
