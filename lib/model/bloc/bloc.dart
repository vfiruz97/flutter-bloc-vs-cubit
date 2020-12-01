// Class States
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SymbolBlocState {}

class MultiplySymbolState extends SymbolBlocState {}

class DivideSymbolState extends SymbolBlocState {}

// Class Events
abstract class SymbolEvent {}

class MultiplySymbolEvent extends SymbolEvent {}

class DivideSymbolEvent extends SymbolEvent {}

// Class Bloc
class SymbolBloc extends Bloc<SymbolEvent, SymbolBlocState> {
  SymbolBloc() : super(DivideSymbolState());

  @override
  Stream<SymbolBlocState> mapEventToState(SymbolEvent event) async* {
    if (event is MultiplySymbolEvent) {
      yield MultiplySymbolState();
    } else if (event is DivideSymbolEvent) {
      yield DivideSymbolState();
    } else {
      throw Exception('Underfined event!');
    }
  }
}
