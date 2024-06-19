import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({ this.param,super.key});
  final param;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          child: Text("page 1 param :${param}"),
        ),
      ),
    );
  }
}
