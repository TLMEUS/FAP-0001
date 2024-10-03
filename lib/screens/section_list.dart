/*
 * This file contains the screens/section_list.dart file for project FAP-0001-A
 *
 * File Information:
 * Project Name: Phoenix Host Application
 * Project Registry: FAP-0001-A
 * Section Name: Screens
 * File Name: section_list.dart
 * File Author: Troy L. Marker
 * File Copyright: 09/25/2024
 * Language: Dart: 3.5.3
 *           Flutter: 3.24.3
 */

import 'package:fap_0001/models/sections_model.dart';
import 'package:fap_0001/models/tables_model.dart';
import 'package:fap_0001/services/sections_service.dart';
import 'package:fap_0001/services/tables_service.dart';
import 'package:fap_0001/widgets/phoenix_section.dart';
import 'package:fap_0001/widgets/phoenix_table.dart';
import 'package:flutter/material.dart';

class SectionList extends StatefulWidget {
  const SectionList({super.key});

  @override
  State<SectionList> createState() => _SectionListState();
}

class _SectionListState extends State<SectionList> {
  late List<SectionsModel>? _sections = [];
  late List<List<TablesModel>?> _tables = [[]];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _sections = (await SectionsService().getSections())!;
    _tables = (await TablesService().getTables())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _sections == null || _sections!.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ...[
                        for (var i = 0; i < _sections!.length; i++)
                          PhoenixSection(
                            title: _sections![i].colName.toString(),
                            headerBackgroundColor: Color(
                                int.parse(_sections![i].colColor.toString())),
                            widgetItems: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                ...[
                                  for (var j = 0; j < _tables[i]!.length; j++)
                                    PhoenixTable(
                                      tableNumber:
                                          _tables[i]![j].colName.toString(),
                                      seats: _tables[i]![j].colSeats,
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
