import 'package:bloc_flutter/ui/counter/bloc/counter_bloc.dart';
import 'package:bloc_flutter/ui/home/bloc/home_bloc.dart';
import 'package:bloc_flutter/ui/counter/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return HomeBloc();
          },
        ),
        BlocProvider(
          create: (context) {
            return CounterBloc();
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
