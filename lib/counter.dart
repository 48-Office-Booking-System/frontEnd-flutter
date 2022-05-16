import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<String, String> {
  CounterBloc() : super("");

  String _nama = "";
  String get nama => _nama;

  String _nomor = "";
  String get nomor => _nomor;
}
