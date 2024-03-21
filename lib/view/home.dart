// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:student_m_provider/controller/contrller.dart';
import 'package:student_m_provider/view/theme.dart';
import 'add_student.dart';
import 'grid_view.dart';
import 'search.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Student Management',
              style: MyTextStyle.appBarText,
            ),
            centerTitle: true,
          ),
          body:  SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  SearchWidget(),
                  const Expanded(child: StudentGrid()),
                ],
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
               context.read<ScreenProvider>().clearImage();
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return AddStudent();
              }));
            },
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }
}