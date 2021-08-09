import 'package:flutter/material.dart';

class CLATLectures extends StatelessWidget {
  const CLATLectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text('CLAT Lectures'),
      ),
    );
  }
}
