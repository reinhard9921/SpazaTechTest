import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spaza_tech_test1/ChangeDontePage.dart';
import 'package:spaza_tech_test1/Cubit/change_cubit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Change Calculator",
      home: BlocProvider(
        create: (context) => ChangeCubit(),
        child: ChangeDenotePage(),
      ),
    );
  }
}