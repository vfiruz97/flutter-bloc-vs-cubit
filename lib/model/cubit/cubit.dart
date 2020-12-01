import 'package:flutter_bloc/flutter_bloc.dart';

// Clase State
abstract class SymbolState {}

class PlusSymbolState extends SymbolState {}

class MinusSymbolState extends SymbolState {}

// Class Cubit
class SymbolCubit extends Cubit<SymbolState> {
  SymbolCubit() : super(PlusSymbolState());

  void getPlus() {
    emit(PlusSymbolState());
  }

  void getMinus() {
    emit(MinusSymbolState());
  }
}
