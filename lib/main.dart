/*
 * This file contains the main.dart file for project FAP-0001
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001
 * Section Name: Lib
 * Module Name: <ROOT>
 * File Name: main.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/25/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */

import 'package:fap_0001/screens/section_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Host());
}

class Host extends StatelessWidget {
  const Host({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SectionList(),
    );
  }
}
