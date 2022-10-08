import 'dart:ui';

import 'package:flutter/material.dart';

class Value2 extends StatelessWidget {
  final String val;
  final String val1;
  const Value2(this.val, this.val1, {super.key});

  @override
  Widget build(BuildContext context) {
    var a = 0;
    a = int.parse(val);

    var PesoToUsd = a * 1.39;
    var PesoToInr = a * 1.39;
    var PesoToEuro = a * 0.013;
    var PesoToYen = a * 1.81;

    var finalValue = PesoToUsd.toStringAsFixed(2);
    return Scaffold(
      appBar: AppBar(title: const Text('Coverted from Peso')),
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
                            'INR',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Indian Rupee',
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
                      '\$ $PesoToInr',
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
                      '\₱ $PesoToEuro',
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
                      '\€ $PesoToInr',
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
                      '\¥ $PesoToUsd',
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
