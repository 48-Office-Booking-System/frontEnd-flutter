import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable{
  
  @override
  List<Object?> get props => [];

}
//incerment event untuk menambah nilai 
class Incerment extends CounterEvent{}

//decerment event untuk mengurangi nilai
class Decerment extends CounterEvent{}