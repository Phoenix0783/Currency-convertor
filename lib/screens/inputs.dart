import 'dart:ui';

import 'package:flutter/material.dart';
import '../widget/inrtoothers.dart';
import '../widget/pesotoothers.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  String dropdownvalue = 'INR';

  // List of items in our dropdown menu
  var items = [
    'USD',
    'INR',
    'Euro',
    'Yen',
    'Peso',
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController MoneyController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Convertor')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                // ignore: avoid_unnecessary_containers
                child: Row(
                  children: const <Widget>[
                    Text(
                      'Enter value',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '( choose currency below )',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.pink,
                          fontFeatures: [FontFeature.subscripts()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: TextField(
                controller: MoneyController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enter your value"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButton(
                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 220,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 20,
                            primary: Colors.pink,
                            fixedSize: const Size(300, 100),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Value1(
                                    MoneyController.text, dropdownvalue)),
                          );
                          // if (dropdownvalue == 'INR') {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Value1(
                          //             MoneyController.text, dropdownvalue)),
                          //   );
                          // } else if (dropdownvalue == 'Peso') {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Value2(
                          //             MoneyController.text, dropdownvalue)),
                          //   );
                          // }
                        },
                        child: const Text(
                          'CONVERT',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/money.png',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
