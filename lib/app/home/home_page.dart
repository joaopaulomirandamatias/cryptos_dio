import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio._'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Cryptos Dio',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
