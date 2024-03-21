import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:student_m_provider/controller/contrller.dart';

// ignore: must_be_immutable
class SearchWidget extends StatelessWidget {
  SearchWidget({super.key});

  TextEditingController searchCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        controller: searchCont,
        onChanged: (value) async {
          await context.read<ScreenProvider>().searchStudent(value);
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(),
          label: Text('Search...'),
        ),
      ),
    );
  }
}