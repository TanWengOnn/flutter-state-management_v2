import 'package:flutter/material.dart';
import 'package:bloc_cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          BlocBuilder<CounterCubits, Map>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${state["num1"]}", textScaleFactor: 5,),
                    Text("${state["num2"]}", textScaleFactor: 5,),
                    CircleAvatar(
                      radius: 40,
                      child: Text("${state["type"] == "multiply" ? "X" : "/"}", textScaleFactor: 2,)
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 2,
                      endIndent: 20,
                      indent: 20,
                    ),
                    Text("${state["answer"]}", textScaleFactor: 5,),
                  ],
                );
              },
          ),
        ],
      ),
    );
  }
}
