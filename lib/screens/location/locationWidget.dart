import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List<String> location = <String>[
  'Catania,Sicily',
  'Taormina,Sicily',
  'Genova,Liguria',
  'Torino,Piemonte',
  'Milano,Piemonte'
];

class LocationDrop extends StatefulWidget {
  const LocationDrop({super.key});

  @override
  State<LocationDrop> createState() => _LocationDropState();
}

class _LocationDropState extends State<LocationDrop> {
      String dropdownValue = location.first;
  @override
  Widget build(BuildContext context) {

    return DropdownButton(
      value: dropdownValue,
      underline: const SizedBox.shrink(),
      iconEnabledColor: const Color(0xFF1B263B),
      icon: const Icon(CupertinoIcons.arrow_right_circle),
      isDense: true,
      focusColor: const Color(0xFF1B263B),

      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: location.map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style:const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          );
        },
      ).toList(),
    );
  }
}
