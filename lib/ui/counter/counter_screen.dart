import 'package:bloc_flutter/ui/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  if (state is CounterInitial) {
                    return Text(
                      '${state.counter}',
                      style: TextStyle(fontSize: 30),
                    );
                  }
                  if (state is CounterUpdated) {
                    return Text('${state.counter}');
                  }
                  if (state is CounterReset) {
                    return Text('${state.counter}');
                  }
                  return Text('Error...!');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(DecrementPressed());
                },
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(IncrementPressed());
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(ResetPressed());
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
