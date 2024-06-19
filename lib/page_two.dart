import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({ this.param,super.key});
  final param;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("page 2param :${param}"),
        ),
      ),
    );
  }
}

