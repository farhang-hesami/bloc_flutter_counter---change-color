part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {
  final Color color;
  HomeInitial(this.color);
}

class RepaintColor extends HomeState {
  final Color color;
  RepaintColor(this.color);
}
