import 'package:cubit_vs_bloc/view/widgets/bloc.dart';
import 'package:cubit_vs_bloc/view/widgets/cubit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.0),
      alignment: Alignment.topCenter,
      child: Column(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CubitWidget(),
          SizedBox(height: 50.0),
          BlocWidget(),
        ],
      ),
    );
  }
}
