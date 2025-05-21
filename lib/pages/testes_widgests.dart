import 'package:flutter/material.dart';

class TestesWidgests extends StatefulWidget {
  const TestesWidgests({super.key});

  @override
  State<TestesWidgests> createState() => _TestesWidgestsState();
}

class _TestesWidgestsState extends State<TestesWidgests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Texto'),
          Expanded(child: Container(color: Colors.blue)),
        ],
      ),
    );
  }
}
