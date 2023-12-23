import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';

import '../../Resources/Colors/colors.dart';
import '../../Widgets/My Button/my_button.dart';
import '../../Widgets/My TextForm Field/my_textform_field.dart';

class ServiceProvider extends StatefulWidget {
  const ServiceProvider({super.key});

  @override
  State<ServiceProvider> createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<ServiceProvider> {
  String selectedValue = 'Option 1'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: primaryColor,
        title: Text(
          'Service Provider',
          style: GoogleFonts.ubuntu(),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value as needed
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.ph,
            MyTextFormField(
                hintText: 'Mobile Number', labelText: 'Mobile Number'),
            20.ph,
            MyTextFormField(hintText: 'First Name', labelText: 'First Name'),
            20.ph,
            MyTextFormField(hintText: 'Last Name', labelText: 'Last Name'),
            20.ph,
            Text(
              "Select Services",
              style: GoogleFonts.ubuntu(fontWeight: FontWeight.w500),
            ),
            20.ph,
            SizedBox(
              width: 283,
              child: DropdownButton<String>(
                isExpanded: true,
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            20.ph,
            MyButton(
              name: 'Save',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
