import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Social app",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [],
        ),
      body: const Column(
        children: [],
      ),
    );
  }
}