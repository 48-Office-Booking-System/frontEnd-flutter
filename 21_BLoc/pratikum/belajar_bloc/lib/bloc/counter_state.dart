import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
abstract class CounterState extends Equatable{
  int value = 0;
  CounterState(this.value);

  @override
  List<Object?> get props => [value];

}