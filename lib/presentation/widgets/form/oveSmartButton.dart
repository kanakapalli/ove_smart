import 'package:flutter/material.dart';

class OveSmartButton extends StatelessWidget {
  const OveSmartButton({
    Key? key,
    required this.c,
    required this.title,
    this.size = const Size(double.infinity, 55),
    required this.onClick,
    this.secondary = false,
  }) : super(key: key);

  final TextEditingController c;
  final String title;
  final Size size;
  final Function onClick;
  final bool secondary;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor:
            secondary ? Colors.transparent:const Color(0xFF1FCEA4) ,
        // foregroundColor: const Color(0xFF1FCEA4),
        minimumSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        side: const BorderSide(width: 1.0, color: Color(0xFF1FCEA4)),
      ),
      onPressed: () {
        onClick();
      },
      child: Text(
        title,
        style: TextStyle(
            color: secondary ? const Color(0xFF1FCEA4): Colors.white  ,
            fontSize: 20),
      ),
    );
  }

  const OveSmartButton.outlined(this.c, this.title, this.size, this.onClick,
      {super.key, required this.secondary});
}
