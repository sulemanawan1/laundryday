// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:laundry/Resources/Sizedbox/sizedbox.dart';
//
// import '../../Resources/Colors/colors.dart';
//
// class ClothesScreen extends StatelessWidget {
//   const ClothesScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         toolbarHeight: 70,
//         backgroundColor: primaryColor,
//         title: Text(
//           'Clothes',
//           style: GoogleFonts.ubuntu(),
//         ),
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(20), // Adjust the value as needed
//           ),
//         ),
//       ),
//       body: GridView.builder(
//         shrinkWrap: true,
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             crossAxisSpacing: 12.0,
//             mainAxisSpacing: 12.0,
//             // childAspectRatio: 150 / 180
//             mainAxisExtent: 100),
//         itemCount: blankets.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.1), // Shadow color
//                     spreadRadius: 5, // Spread radius
//                     blurRadius: 6, // Blur radius
//                     offset: Offset(0, 3), // Offset for the shadow
//                   ),
//                 ],
//                 color: Colors.white),
//             child: Column(
//               children: [
//                 10.ph,
//                 // ClipRRect(
//                 //     borderRadius: BorderRadius.only(
//                 //         topLeft: Radius.circular(20),
//                 //         topRight: Radius.circular(20)),
//                 //     child: Image.asset(
//                 //       services[index].image.toString(),
//                 //       height: 170,
//                 //       width: double.infinity,
//                 //       fit: BoxFit.cover,
//                 //     )),
//                 // 10.ph,
//                 Text(
//                   blankets[index].name.toString(),
//                   style: GoogleFonts.ubuntu(
//                       fontWeight: FontWeight.w400, fontSize: 20),
//                   textAlign: TextAlign.center,
//                   // overflow: TextOverflow.ellipsis,
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
