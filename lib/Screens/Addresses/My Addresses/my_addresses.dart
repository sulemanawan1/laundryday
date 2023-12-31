import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Colors/colors.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';
import 'package:laundryday/Widgets/My%20App%20bar/my_app_bar.dart';
import 'package:laundryday/Widgets/My%20Button/my_button.dart';
import 'package:laundryday/Widgets/My%20Heading/heading.dart';

class MyAddresses extends StatefulWidget {
  const MyAddresses({super.key});

  @override
  State<MyAddresses> createState() => _MyAddressesState();
}

class _MyAddressesState extends State<MyAddresses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: MyAppBar(title: 'My Addresses'),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Heading(text: "Address List"),
        10.ph,
        GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.1),
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Add Address",
                    style: GoogleFonts.poppins(
                      color: primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  10.pw,
                  const Icon(
                    Icons.add_location_outlined,
                    color: primaryColor,
                  )
                ],
              ),
            ),
          ),
        ),
        10.ph,
        Expanded(
          child: ListView.separated(
            // scrollDirection: Axis.vertical,
            separatorBuilder: ((context, index) => 10.ph),
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                isThreeLine: false,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: primaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                leading: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Icon(
                    Icons.radio_button_checked,
                    color: primaryColor,
                  ),
                ),
                title: Text(
                  "RIyadh",
                  style: GoogleFonts.poppins(color: blackColor),
                  maxLines: 1,
                ),
                subtitle: Text(
                  "Al Hazm- Riyadhdddkdhdhdddjdkjdjdjdjdjdddidjiduddudiididididdkdkdkkddkdkkdkdkdkdkkdkdk",
                  style: GoogleFonts.poppins(color: greyColor),
                  maxLines: 1,
                ),
                trailing: Wrap(children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete_forever_outlined,
                        color: Colors.red,
                      ))
                ]),
              );
            },
          ),
        ),
        10.ph,
        MyButton(
          name: "Save",
          onPressed: () {},
        ),
        30.ph
      ]),
    );
  }
}
