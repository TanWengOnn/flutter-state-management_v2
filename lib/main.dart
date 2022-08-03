import 'package:bloc_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'HomePage.dart';
import 'calculator_page.dart';

void main() {
  runApp(BlocProvider(
      create: (context) => CounterCubits(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/calculator-page': (context) => Calculator(),
      },
    );
  }
}


// Reference
/*
  1. https://www.youtube.com/watch?v=L_QMsE2v6dw
  2. https://www.youtube.com/watch?v=YhRZzq1yNKc
*/
