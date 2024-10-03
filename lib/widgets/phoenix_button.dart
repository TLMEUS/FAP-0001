/*
 * This file contains the widgets/phoenix_button.dart file for project FAP-0001
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001
 * Section Name: Lib
 * Module Name: Widgets
 * File Name: phoenix_button.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/25/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */

import 'package:flutter/material.dart';

class PhoenixButton extends StatefulWidget {
  final String tableNumber;
  final int guestNumber;

  const PhoenixButton(
      {super.key, required this.tableNumber, required this.guestNumber});

  @override
  State<PhoenixButton> createState() => _PhoenixButtonState();
}

class _PhoenixButtonState extends State<PhoenixButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('${widget.guestNumber}'),
    );
  }
}
