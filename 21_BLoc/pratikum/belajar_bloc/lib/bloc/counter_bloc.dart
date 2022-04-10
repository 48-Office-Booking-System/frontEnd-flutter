import 'package:belajar_bloc/bloc/counter_event.dart';
import 'package:belajar_bloc/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterBloc,CounterState> {
  CounterBloc():super(const CounterState(0)){ 
   on<Incerment>((event,emit)=>emit(CounterState(state.value + 1)));
   on<Decerment>((event,emit)=>emit(CounterState(state.value + 1)));
 
  }
}