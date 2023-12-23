import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';

import '../../Resources/Colors/colors.dart';
import '../../Widgets/My Button/my_button.dart';
import 'Model/carpet_categories.dart';
import 'Model/carpets.dart';

class CarpetScreens extends StatefulWidget {
  const CarpetScreens({super.key});

  @override
  State<CarpetScreens> createState() => _CarpetScreensState();
}

class _CarpetScreensState extends State<CarpetScreens> {
  List<Carpets> carpets = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carpets.add(Carpets(subCatgories: [
      CarpetCategories(name: 'Room Majlis Large', price: 34.5)
    ], name: 'Room Majlis', image: '', category: 'carpets'));

    carpets.add(Carpets(subCatgories: [
      CarpetCategories(name: 'Marca Large', price: 13.75),
      CarpetCategories(name: 'Marca Medium ', price: 11.5),
      CarpetCategories(name: 'Marca Small ', price: 12.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
      CarpetCategories(name: 'Marca Extra SMALL ', price: 14.5),
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
                            showModalBottomSheet(
                              isDismissible: false,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30))),
                              barrierLabel: 'Show',
                              context: context,
                              builder: (BuildContext context) => SafeArea(
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
                                        itemCount:
                                            carpets[index].subCatgories!.length,
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
                                                            color: primaryColor,
                                                            shape: BoxShape
                                                                .circle),
                                                    width: 40,
                                                    height: 40,
                                                    child: Center(
                                                      child: Text(
                                                        "-",
                                                        style:
                                                            GoogleFonts.ubuntu(
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
                                                    style: GoogleFonts.ubuntu(),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: primaryColor,
                                                            shape: BoxShape
                                                                .circle),
                                                    width: 40,
                                                    height: 40,
                                                    child: Center(
                                                      child: Text(
                                                        "+",
                                                        style:
                                                            GoogleFonts.ubuntu(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: () {},
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    10.ph,
                                    MyButton(
                                      name: 'ds',
                                      onPressed: () {},
                                    ),
                                    10.ph,
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
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
