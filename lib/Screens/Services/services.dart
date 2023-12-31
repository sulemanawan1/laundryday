import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Models/services_model.dart';
import 'package:laundryday/Resources/Colors/colors.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';
import 'package:laundryday/Routes/route_names.dart';
import 'package:laundryday/Widgets/My%20Carousel%20Indicator/my_carousel_indicator.dart';
import 'package:laundryday/Widgets/My%20Carousel/my_carousel.dart';
import 'package:laundryday/Widgets/My%20Heading/heading.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<ServicesModel> services = [];
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

  @override
  void initState() {
    controller = CarouselController();

    super.initState();

    services.add(
        ServicesModel(name: 'Clothes', image: 'assets/services_clothing.jpg'));
    services.add(
        ServicesModel(name: 'Blankets', image: 'assets/services_blankets.jpg'));
    services.add(
        ServicesModel(name: "Carpets", image: 'assets/services_carpets.jpeg'));
    services.add(ServicesModel(
        name: "Furniture", image: 'assets/services_furniture.jpeg'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: primaryColor, size: 24),
        backgroundColor: whiteColor,
        elevation: 0,
        leadingWidth: 300,
        leading: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
                width: 300,
                decoration: BoxDecoration(
                    color: mediumWhiteColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pickup from",
                            style: GoogleFonts.poppins(
                                color: blackColor, fontWeight: FontWeight.w500),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                      Text(
                        "Riyah,Alhazm",
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(color: blackColor),
                      )
                    ],
                  ),
                )),
          ),
        ),
        actions: [
          10.pw,
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                  color: mediumWhiteColor,
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                child: Icon(
                  Icons.shopping_bag_outlined,
                ),
              ),
            ),
          ),
          10.pw,
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                  color: mediumWhiteColor,
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                child: Icon(
                  Icons.notifications_outlined,
                ),
              ),
            ),
          ),
          10.pw,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          10.ph,
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              MyCarousel(
                images: images,
                index: _currentIndex,
                controller: controller,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              MyCarouselIndicator(
                dotCount: images.length,
                position: _currentIndex,
                onTap: (index) {
                  setState(() {
                    controller.animateToPage(index);
                  });
                },
              ),
            ],
          ),
          15.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Heading(
              text: 'Services',
            ),
          ),
          15.ph,
          ServicesGrid(services: services),
          10.ph
        ]),
      ),
    );
  }
}

class ServicesGrid extends StatelessWidget {
  final List<ServicesModel> services;
  const ServicesGrid({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 14.0,
          mainAxisSpacing: 14.0,
          // childAspectRatio: 150 / 180
          mainAxisExtent: 220),
      itemCount: services.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            if (services[index].name.toString() == 'Blankets') {
              GoRouter.of(context).pushNamed(RouteNames().blanketsScreen);
            } else if (services[index].name.toString() == "Carpets") {
              GoRouter.of(context).pushNamed(RouteNames().carpetsScreen);
            } else if (services[index].name.toString() == "Clothes") {
              GoRouter.of(context).pushNamed(RouteNames().serviceDetail);
            }
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 6, // Blur radius
                    offset: const Offset(0, 3), // Offset for the shadow
                  ),
                ],
                color: mediumWhiteColor),
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
                18.ph,
                Center(
                  child: Text(
                    services[index].name.toString(),
                    style: GoogleFonts.poppins(
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
