import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String text;
  const TabButton({required this.text , super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1B263B),
        fixedSize: const  Size(120, 35),
        textStyle: const TextStyle(
          fontSize: 15,
        )
      ),
      child:  Text(text , style: TextStyle(color:Colors.white))
    );
  }
}
