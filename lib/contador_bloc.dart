import 'package:flutter_bloc/flutter_bloc.dart';
import 'contador_event.dart';
import 'contador_state.dart';

class ContadorBloc extends Bloc<ContadorEvent, ContadorState> {
  ContadorBloc() : super(ContadorInicial(0)) {
    on<IncrementarContador>((event, emit) {
      emit(ContadorState(state.contador + 1));
    });
    on<DecrementarContador>((event, emit) {
      if (state.contador > 0) {
        emit(ContadorState(state.contador - 1));
      }
    });
  }
}
