/*
 * This file contains the widgets/phoenix_section.dart file for project FAP-0001
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001
 * Section Name: Lib
 * Module Name: Widgets
 * File Name: phoenix_section.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/25/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */

import 'package:custom_accordion/custom_accordion.dart';
import "package:flutter/material.dart";

class PhoenixSection extends StatelessWidget {
  final String title;
  final Color headerBackgroundColor;
  final Widget widgetItems;

  const PhoenixSection(
      {super.key,
      required this.title,
      required this.headerBackgroundColor,
      required this.widgetItems});

  @override
  Widget build(BuildContext context) {
    return CustomAccordion(
      title: title,
      headerBackgroundColor: headerBackgroundColor,
      titleStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      toggleIconOpen: Icons.keyboard_arrow_down_sharp,
      toggleIconClose: Icons.keyboard_arrow_up_sharp,
      headerIconColor: Colors.black,
      accordionElevation: 5.0,
      widgetItems: widgetItems,
    );
  }
}
