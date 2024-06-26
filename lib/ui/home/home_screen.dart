import 'package:bloc_flutter/ui/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              print(state);
              if (state is HomeInitial) {
                return Container(
                  color: state.color,
                );
              }
              if (state is RepaintColor) {
                return Container(
                  color: state.color,
                );
              }
              return Container(
                color: Colors.amber,
              );
            },
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                BlocProvider.of<HomeBloc>(context).add(ChangeColorEvent());
              },
              child: Text('Change Color'),
            ),
          ),
        ],
      ),
    );
  }
}
