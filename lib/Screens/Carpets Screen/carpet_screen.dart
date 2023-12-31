import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Models/carpet_categories.dart';
import 'package:laundryday/Models/carpets.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';
import '../../Resources/Colors/colors.dart';
import '../../Widgets/My Button/my_button.dart';

class CarpetScreens extends StatefulWidget {
  const CarpetScreens({super.key});

  @override
  State<CarpetScreens> createState() => _CarpetScreensState();
}

class _CarpetScreensState extends State<CarpetScreens> {
  List<Carpets> carpets = [];

  int itemIndex = -1;

  double total = 0.0;

  @override
  void initState() {
    super.initState();

    carpets.add(Carpets(subCatgories: [
      CarpetCategories(name: 'Room Majlis Large', price: 34.5)
    ], name: 'Room Majlis', image: '', category: 'carpets'));

    carpets.add(Carpets(subCatgories: [
      CarpetCategories(name: 'Marca Large', price: 13.75),
      CarpetCategories(name: 'Marca Medium ', price: 11.5),
      CarpetCategories(name: 'Marca Small ', price: 12.5),
    ], name: 'Marca', image: '', category: 'carpets'));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 70,
          backgroundColor: primaryColor,
          title: Text(
            'Carpets',
            style: GoogleFonts.ubuntu(),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20), // Adjust the value as needed
            ),
          ),
        ),
        body: Column(
          children: [
            10.ph,
            Container(
              height: 50,
              color: Colors.white,
              child: TabBar(
                padding: const EdgeInsets.all(6),
                physics: const ClampingScrollPhysics(),
                unselectedLabelColor: primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(30)),
                tabs: [
                  Tab(
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: primaryColor)),
                      child: const Center(child: Text('Carpets')),
                    ),
                  ),
                  Tab(
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: primaryColor)),
                      child: const Center(child: Text('Laundry Carpets')),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 12.0,
                              mainAxisSpacing: 12.0,
                              // childAspectRatio: 150 / 180
                              mainAxisExtent: 100),
                      itemCount: carpets.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              // Change border color of the tapped grid item

                              itemIndex = index;

                              for (int i = 0; i < carpets.length; i++) {
                                if (i == itemIndex) {
                                  carpets[i].color = primaryColor;
                                } else {
                                  carpets[i].color = Colors.grey;
                                }
                              }

                              // for (int i = 0;
                              //     i < carpets[index].subCatgories!.length;
                              //     i++) {
                              //   total = total +
                              //       double.parse(carpets[index]
                              //           .subCatgories![i]
                              //           .price
                              //           .toString());
                              // }

                              if (kDebugMode) {
                                print("total price $total");
                              }
                            });
                            showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30))),
                              barrierLabel: 'Show',
                              context: context,
                              builder: (BuildContext context) =>
                                  StatefulBuilder(builder: (context, state) {
                                return SafeArea(
                                  child: Column(
                                    children: [
                                      10.ph,
                                      Container(
                                        width: 60,
                                        height: 4,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.grey),
                                      ),
                                      20.ph,
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: carpets[index]
                                              .subCatgories!
                                              .length,
                                          itemBuilder:
                                              (BuildContext context, int ins) {
                                            log(carpets[index]
                                                .subCatgories![ins]
                                                .name
                                                .toString());
                                            return ListTile(
                                              onTap: () {},
                                              title: Text(carpets[index]
                                                  .subCatgories![ins]
                                                  .name
                                                  .toString()),
                                              subtitle: Text(carpets[index]
                                                  .subCatgories![ins]
                                                  .price
                                                  .toString()),
                                              trailing: Wrap(
                                                spacing: 10,
                                                children: [
                                                  GestureDetector(
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                              color:
                                                                  primaryColor,
                                                              shape: BoxShape
                                                                  .circle),
                                                      width: 40,
                                                      height: 40,
                                                      child: Center(
                                                        child: Text(
                                                          "-",
                                                          style: GoogleFonts
                                                              .ubuntu(
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    onTap: () {},
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10),
                                                    child: Text(
                                                      carpets[index]
                                                          .subCatgories![ins]
                                                          .quantity
                                                          .toString(),
                                                      style:
                                                          GoogleFonts.ubuntu(),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                              color:
                                                                  primaryColor,
                                                              shape: BoxShape
                                                                  .circle),
                                                      width: 40,
                                                      height: 40,
                                                      child: Center(
                                                        child: Text(
                                                          "+",
                                                          style: GoogleFonts
                                                              .ubuntu(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                      ),
                                                    ),
                                                    onTap: () {
                                                      state(() {
                                                        int quantity =
                                                            int.parse(carpets[
                                                                    index]
                                                                .subCatgories![
                                                                    ins]
                                                                .quantity
                                                                .toString());

                                                        quantity++;

                                                        carpets[index]
                                                            .subCatgories![ins]
                                                            .quantity = quantity;
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      10.ph,
                                      MyButton(
                                        name: 'Add',
                                        onPressed: () {},
                                      ),
                                      10.ph,
                                    ],
                                  ),
                                );
                              }),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: carpets[index].color),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.1), // Shadow color
                                    spreadRadius: 5, // Spread radius
                                    blurRadius: 6, // Blur radius
                                    offset: const Offset(
                                        0, 3), // Offset for the shadow
                                  ),
                                ],
                                color: Colors.white),
                            child: Column(
                              children: [
                                10.ph,
                                Text(
                                  carpets[index].name.toString(),
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                  textAlign: TextAlign.center,
                                  // overflow: TextOverflow.ellipsis,
                                )
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
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // Content of Tab 2
                  const Center(child: Text('Tab 2 Content')),

                  // Content of Tab 3
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
