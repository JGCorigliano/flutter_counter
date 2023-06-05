import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'contador_bloc.dart';
import 'contador_event.dart';
import 'contador_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BlocProvider(
        create: (context) => ContadorBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contadorBloc = BlocProvider.of<ContadorBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Contador'),
      ),
      body: Center(
        child: BlocBuilder<ContadorBloc, ContadorState>(
          builder: (context, state) {
            return Text(
              'Contador: ${state.contador}',
              style: TextStyle(
                fontSize: 30,
              ),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              contadorBloc.add(IncrementarContador());
            },
            tooltip: 'Incrementar',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              contadorBloc.add(DecrementarContador());
            },
            tooltip: 'Decrementar',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
