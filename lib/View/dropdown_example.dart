import 'dart:ui';

import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({Key? key}) : super(key: key);

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

List<String> citylist = [
  "Mianwali",
  "Rawalpindi",
  "Islamabad",
  "Chakwal",
  "Multan",
  "Faisalabad",
  "Karachi"
];
String selecteditem = citylist[0].toString();
Color? clr = Colors.white;

class _DropDownExampleState extends State<DropDownExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "DropDown & BottomNavigationBar",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SingleChildScrollView(
              child: DropdownButton(
                dropdownColor: Colors.blueAccent,
                value: selecteditem,
                items: citylist.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? value) {
                  selecteditem = value.toString();
                  setState(() {});
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  clr = Colors.amber;
                  setState(() {});
                },
                child: const Icon(
                  Icons.home,
                  size: 40,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  clr = Colors.blue;
                  setState(() {});
                },
                child: const Icon(
                  Icons.account_box,
                  size: 40,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  clr = Colors.brown;
                  setState(() {});
                },
                child: const Icon(
                  Icons.add_alert,
                  size: 40,
                ),
              ),
            ),
            ////////////////////////
          ],
        ),
      ),
    );
  }
}
