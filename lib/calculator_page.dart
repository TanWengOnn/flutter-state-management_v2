import 'package:bloc_cubit/counter_state.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubits, CounterState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${state.data.firstOperand}", textScaleFactor: 5,),
                    Text("${state.data.secondOperand}", textScaleFactor: 5,),
                    CircleAvatar(
                      radius: 40,
                      child: Text("${BlocProvider.of<CounterCubits>(context).getOperator()}", textScaleFactor: 2,)
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 2,
                      endIndent: 20,
                      indent: 20,
                    ),
                    Text("${state.data.result}", textScaleFactor: 5,),
                  ],
                );
              },
          ),
        ],
      ),
    );
  }
}
