import 'package:flutter/material.dart';

class BloodType extends StatefulWidget {
  const BloodType({
    Key? key,
  }) : super(key: key);

  @override
  State<BloodType> createState() => _CityState();
}

class _CityState extends State<BloodType> {
  String dropdownValue = 'A+';
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color(0xFFF8F8F8),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Image.asset('assets/icons/blood_type.png'),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(
                Icons.arrow_downward,
                color: Color.fromRGBO(255, 33, 86, 1),
              ),
              borderRadius: BorderRadius.circular(8.0),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(
                color: Color.fromRGBO(255, 33, 86, 1),
                fontSize: 16.0,
              ),
              underline: Container(
                height: 2,
                color: Colors.grey,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>[
                'A+',
                'A-',
                'B+',
                'B-',
                'O+',
                'AB+',
                'AB-',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
