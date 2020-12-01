import 'package:cubit_vs_bloc/view/pages/home.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit vs Bloc'),
        centerTitle: true,
      ),
      body: HomePage(),
    );
  }
}
