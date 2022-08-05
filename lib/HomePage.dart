import 'dart:ffi';

import 'package:bloc_cubit/counter_cubit.dart';
import 'package:bloc_cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CounterCubits cubit;

  TextEditingController inputController = TextEditingController();

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    cubit =  BlocProvider.of<CounterCubits>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterCubits, CounterState>(
                bloc: cubit,
                builder: (context, state) {
                  return Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                        controller: inputController,
                      ),
                      Text("${state.data.firstOperand}", textScaleFactor: 5,),
                      ElevatedButton(onPressed: () {
                        cubit.increment();
                      }, child: Text("Increment")
                      ),
                      ElevatedButton(onPressed: () {
                        cubit.decrement();
                      }, child: Text("Decrement")
                      ),
                      ElevatedButton(onPressed: () {
                        cubit.reset();
                      }, child: Text("Reset")
                      ),
                      ElevatedButton(onPressed: () {
                        if(inputController.text.isNotEmpty){
                          Navigator.pushNamed(context, '/calculator-page');
                          cubit.inputValue(double.parse(inputController.text));
                          cubit.multiply();
                        }
                      }, child: Text("Multiply")
                      ),
                      ElevatedButton(onPressed: () {
                        if(inputController.text != ""){
                          Navigator.pushNamed(context, '/calculator-page');
                          cubit.inputValue(double.parse(inputController.text));
                          cubit.divide();
                        }
                      }, child: Text("Divide")
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ]
      ),
    );
  }
}
