import 'package:cubit_vs_bloc/model/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SymbolCubit>(
      create: (context) => SymbolCubit(),
      child: CubitWidgetBuilder(),
    );
  }
}

class CubitWidgetBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SymbolCubit, SymbolState>(
      builder: (context, state) => Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.red,
              ),
            ),
            onPressed: () {
              context.read<SymbolCubit>().getPlus();
            },
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              text: 'Cubin: ',
              children: <InlineSpan>[
                TextSpan(
                  text: state is PlusSymbolState ? '+' : '-',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Text(
              '-',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.red,
              ),
            ),
            onPressed: () {
              context.read<SymbolCubit>().getMinus();
            },
          ),
        ],
      ),
    );
  }
}
