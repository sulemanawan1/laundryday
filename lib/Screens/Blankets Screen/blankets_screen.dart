import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';

import '../../Resources/Colors/colors.dart';
import 'Model/blanket.dart';

class BlanketsScreen extends StatefulWidget {
  const BlanketsScreen({super.key});

  @override
  State<BlanketsScreen> createState() => _BlanketsScreenState();
}

class _BlanketsScreenState extends State<BlanketsScreen> {
  List<Blanket> blankets = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    blankets.add(Blanket(name: 'Bed Spread'));
    blankets.add(Blanket(name: 'Blanket'));
    blankets.add(Blanket(name: 'Pillow'));
    blankets.add(Blanket(name: 'Sleeping Bag'));
    blankets.add(Blanket(name: 'Pillow Case'));
    blankets.add(Blanket(name: 'Sheet'));
    blankets.add(Blanket(name: 'Bed Cover'));
    blankets.add(Blanket(name: 'Sofa Cover'));
    blankets.add(Blanket(name: 'Table Cloth'));
    blankets.add(Blanket(name: 'Towel'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: primaryColor,
        title: Text(
          'Blankets',
          style: GoogleFonts.ubuntu(),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value as needed
          ),
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            // childAspectRatio: 150 / 180
            mainAxisExtent: 100),
        itemCount: blankets.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 6, // Blur radius
                    offset: Offset(0, 3), // Offset for the shadow
                  ),
                ],
                color: Colors.white),
            child: Column(
              children: [
                10.ph,
                // ClipRRect(
                //     borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(20),
                //         topRight: Radius.circular(20)),
                //     child: Image.asset(
                //       services[index].image.toString(),
                //       height: 170,
                //       width: double.infinity,
                //       fit: BoxFit.cover,
                //     )),
                // 10.ph,
                Text(
                  blankets[index].name.toString(),
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w400, fontSize: 20),
                  textAlign: TextAlign.center,
                  // overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
