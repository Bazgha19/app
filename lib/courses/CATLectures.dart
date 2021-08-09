import 'package:flutter/material.dart';

class CATLectures extends StatelessWidget {
  const CATLectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text('CAT Lectures'),
      ),
    );
  }
}
