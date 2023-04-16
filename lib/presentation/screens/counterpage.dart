import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/counter_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timer = Timer.periodic(new Duration(seconds: 1), (timer) {
      BlocProvider.of<CounterCubit>(context).incrementCounter();
    });
    return Center(
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () =>
                BlocProvider.of<CounterCubit>(context).incrementCounter(),
            child: Text("+"),
          ),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Text(state.counterValue.toString(),
                  style: Theme.of(context).textTheme.headlineMedium);
            },
          ),
          FloatingActionButton(
              onPressed: () =>
                  BlocProvider.of<CounterCubit>(context).decrementCounter(),
              child: Text("-"))
        ],
      ),
    );
  }
}
