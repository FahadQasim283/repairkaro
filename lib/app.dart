import 'package:flutter/material.dart';

class Densat extends StatefulWidget {
  const Densat({super.key});

  @override
  State<Densat> createState() => _DensatState();
}

class _DensatState extends State<Densat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Densat',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Densat Home Page')),
        body: const Center(child: Text('Welcome to Densat!')),
      ),
    );
  }
}

