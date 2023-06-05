import 'package:equatable/equatable.dart';

class ContadorState extends Equatable {
  final int contador;

  ContadorState(this.contador);

  @override
  List<Object?> get props => [contador];
}

class ContadorInicial extends ContadorState {
  ContadorInicial(int contador) : super(0);
}
