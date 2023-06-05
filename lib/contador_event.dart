import 'package:equatable/equatable.dart';

abstract class ContadorEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class IncrementarContador extends ContadorEvent {}

class DecrementarContador extends ContadorEvent {}
