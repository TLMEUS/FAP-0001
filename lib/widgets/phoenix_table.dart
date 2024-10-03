/*
 * This file contains the widgets/phoenix_table.dart file for project FAP-0001
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001
 * Section Name: Lib
 * Module Name: Widgets
 * File Name: phoenix_table.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/25/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */
import 'package:fap_0001/widgets/phoenix_button.dart';
import 'package:flutter/material.dart';

class PhoenixTable extends StatelessWidget {
  final String tableNumber;
  final List<int> seats;
  final int index;

  const PhoenixTable(
      {super.key,
      required this.tableNumber,
      required this.seats,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '$tableNumber - ',
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        ...[
          for (var i = 1; i <= seats[index]; i++)
            PhoenixButton(
              tableNumber: tableNumber,
              guestNumber: i,
            )
        ]
      ],
    );
  }
}
