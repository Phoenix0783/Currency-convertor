import 'dart:ui';

import 'package:flutter/material.dart';

class Value1 extends StatelessWidget {
  final String val;
  final String val1;
  const Value1(this.val, this.val1, {super.key});

  @override
  Widget build(BuildContext context) {
    var a = 0;
    a = int.parse(val);

    var InrToUsd = a * 0.013;
    var InrToPeso = a * 0.72;
    var InrToEuro = a * 0.013;
    var InrToYen = a * 1.81;

    var finalValue = InrToUsd.toStringAsFixed(2);
    var finalValue1 = InrToPeso.toStringAsFixed(2);
    var finalValue2 = InrToEuro.toStringAsFixed(2);
    var finalValue3 = InrToYen.toStringAsFixed(2);
    return Scaffold(
      appBar: AppBar(title: const Text('Converted')),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: PhysicalModel(
              color: Colors.white,
              elevation: 3,
              shadowColor: Colors.pink,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'USD',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'US dollars',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.blueAccent,
                                fontFeatures: [FontFeature.subscripts()],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\$ $finalValue',
                      style: const TextStyle(
                          color: Colors.pink,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: PhysicalModel(
              color: Colors.white,
              elevation: 3,
              shadowColor: Colors.pink,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                // decoration: BoxDecoration(
                //     border: Border.all(color: Colors.pink),
                //     borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'Peso',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Philippine peso',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.blueAccent,
                                fontFeatures: [FontFeature.subscripts()],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\₱ $finalValue1',
                      style: const TextStyle(
                          color: Colors.pink,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: PhysicalModel(
              color: Colors.white,
              elevation: 3,
              shadowColor: Colors.pink,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'Euro',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'European euro',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.blueAccent,
                                fontFeatures: [FontFeature.subscripts()],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\€ $finalValue2',
                      style: const TextStyle(
                          color: Colors.pink,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: PhysicalModel(
              color: Colors.white,
              elevation: 3,
              shadowColor: Colors.pink,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                // decoration: BoxDecoration(
                //     border: Border.all(color: Colors.pink),
                //     borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'Japanese Yen',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '( in Kg )',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.blueAccent,
                                fontFeatures: [FontFeature.subscripts()],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\¥ $finalValue3',
                      style: const TextStyle(
                          color: Colors.pink,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
