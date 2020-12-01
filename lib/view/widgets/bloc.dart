import 'package:cubit_vs_bloc/model/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SymbolBloc>(
      create: (_) => SymbolBloc(),
      child: BlocWidgetBuilder(),
    );
  }
}

class BlocWidgetBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SymbolBloc symbolBloc = BlocProvider.of<SymbolBloc>(context);

    return BlocBuilder<SymbolBloc, SymbolBlocState>(
      builder: (context, state) => Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: Text(
              '*',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.red,
              ),
            ),
            onPressed: () {
              symbolBloc.add(MultiplySymbolEvent());
            },
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              text: 'Bloc: ',
              children: <InlineSpan>[
                TextSpan(
                  text: state is MultiplySymbolState ? '*' : '/',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: Text(
              '/',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.red,
              ),
            ),
            onPressed: () {
              symbolBloc.add(DivideSymbolEvent());
            },
          ),
        ],
      ),
    );
  }
}
