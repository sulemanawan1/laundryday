import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Models/laundry_model.dart';
import 'package:laundryday/Resources/Colors/colors.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';
import 'package:laundryday/Widgets/My%20App%20bar/my_app_bar.dart';
import 'package:laundryday/Widgets/My%20Heading/heading.dart';

class ServiceDetail extends StatefulWidget {
  const ServiceDetail({super.key});

  @override
  State<ServiceDetail> createState() => _ServiceDetailState();
}

class _ServiceDetailState extends State<ServiceDetail> {
  List<Laundry> laundries = [];

  @override
  void initState() {
    super.initState();

    laundries.addAll([
      Laundry(23.5, 26.6, 3.0, 'Wash & Presss', 24, 1, "#usoo134",
          'assets/laundry.png', 2, 'system-defined'),
      Laundry(23.5, 26.6, 5.0, 'Green Land', 50, 2, "#sk#22",
          'assets/laundry.png', 3, 'system-defined'),
      Laundry(23.5, 26.6, 2.0, 'Fast Laundry Riyadh', 30, 3, "#ao134",
          'assets/laundry.png', 2, 'system-defined'),
      Laundry(23.5, 26.6, 4.1, 'Smart Riyadh Laundry ', 100, 4, "#riro21",
          'assets/laundry.png', 1, 'user-specified'),
      Laundry(23.5, 26.6, 4.0, 'New Laundry', 24, 5, "di4444",
          'assets/laundry.png', 3, 'user-specified'),
      Laundry(23.5, 26.6, 5.0, 'Al-Riyadh', 40, 6, "#3494",
          'assets/laundry.png', 2.5, 'user-specified'),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: MyAppBar(
        title: 'Clothes',
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/services_clothing.jpg',
                    ))),
          ),
          SizedBox(
            height: 86,
            child: Card(
              elevation: 0,
              color: mediumWhiteColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.ph,
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Order Now',
                            style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/order_vector.png',
                            height: 40,
                          )
                        ],
                      ),
                    ),
                    Text(
                      "from Nearest Laundry",
                      style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 12,
                          letterSpacing: 0.8),
                    ),
                  ],
                ),
              ),
            ),
          ),
          10.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Heading(text: 'Laundries'),
          ),
          20.ph,
          LaundryList(
            laundries: laundries,
          )
        ]),
      ),
    );
  }
}

class LaundryList extends StatefulWidget {
  List<Laundry> laundries;
  LaundryList({super.key, required this.laundries});

  @override
  State<LaundryList> createState() => _LaundryListState();
}

class _LaundryListState extends State<LaundryList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.laundries.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            if (widget.laundries[index].type == "system-defined") {
            } else {}
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
                      decoration: const BoxDecoration(color: Color(0xfff0f5f8)),
                      child: Center(
                        child: Image.asset(
                          widget.laundries[index].conpanyLogo.toString(),
                          width: 80,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            5.ph,
                            Text(
                              widget.laundries[index].vicinity.toString(),
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.w500),
                              overflow: TextOverflow.ellipsis,
                            ),
                            10.ph,
                            Text(
                              widget.laundries[index].vicinity.toString(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(color: Colors.grey),
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
                                  "${widget.laundries[index].distance.toString()} km",
                                  style: GoogleFonts.poppins(
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
                                  widget.laundries[index].rating.toString(),
                                  style: GoogleFonts.poppins(),
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
    );
  }
}
