/*
 * This file contains the screens/section_list.dart file for project FAP-0001
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001
 * Section Name: Lib
 * Module Name: Screens
 * File Name: section_list.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/25/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */

import 'package:fap_0001/widgets/phoenix_section.dart';
import 'package:fap_0001/widgets/phoenix_table.dart';
import 'package:flutter/material.dart';

class SectionList extends StatefulWidget {
  const SectionList({super.key});

  @override
  State<SectionList> createState() => _SectionListState();
}

class _SectionListState extends State<SectionList> {
  List<String> sections = [
    'BAR',
    'T&T',
    'THIRTIES',
    'FORTIES',
    'FIFTIES',
    'SIXTIES'
  ];

  List<int> colors = [
    0xFFC8BFE7,
    0xFFFFF200,
    0xFF22B14C,
    0xFFA349A4,
    0xFFFF7F27,
    0xFFFFAEC9
  ];

  List<List<String>> tables = [
    ['1', '2', '3', '4'],
    ['13', '14', '15', '16', '17', '18', '19', '24'],
    ['31', '32', '33', '34', '35', '36', '37'],
    ['41', '42', '43', '44', '45'],
    ['51', '52', '53', '54', '55', '56', '57', '58'],
    ['61', '62', '63', '64', '65', '66', '67', '68', '69']
  ];

  final List<List<int>> seats = [
    [2, 2, 2, 2],
    [4, 4, 4, 4, 4, 4, 4, 4],
    [8, 4, 4, 8, 4, 4, 6],
    [4, 4, 4, 4, 10],
    [2, 2, 2, 2, 8, 4, 8, 4],
    [2, 2, 4, 4, 4, 4, 4, 2, 2]
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ...[
                  for (var i = 0; i < sections.length; i++)
                    PhoenixSection(
                      title: sections[i],
                      headerBackgroundColor: Color(
                        colors[i],
                      ),
                      widgetItems: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ...[
                            for (var j = 0; j < tables[i].length; j++)
                              PhoenixTable(
                                tableNumber: tables[i][j],
                                seats: seats[i],
                                index: j,
                              ),
                          ],
                        ],
                      ),
                    ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
