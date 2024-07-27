import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String text;

  const TabButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 130,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFF1B263B),
            borderRadius: BorderRadius.circular(10)),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white
            )
          ),
        ),
      ),
    );
  }
}
