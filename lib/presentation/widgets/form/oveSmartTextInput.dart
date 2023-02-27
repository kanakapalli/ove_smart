import 'package:flutter/material.dart';

class OveSmartTextField extends StatelessWidget {
  const OveSmartTextField({
    Key? key,
    required this.hindText,
    required this.icon,
  }) : super(key: key);
  final String hindText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        //Do something with the user input.
      },
      decoration: InputDecoration(
        hintText: hindText,
        prefixIcon: Icon(icon),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
      ),
    );
  }
}
