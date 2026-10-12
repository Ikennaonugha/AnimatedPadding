import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Demo()));

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  double padding = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPadding')),
      body: Column(
        children: [
          Expanded(
            child: AnimatedPadding(
              padding: EdgeInsets.all(padding),
              duration: const Duration(seconds: 1),
              child: Container(color: Colors.blue),
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => padding = padding == 10 ? 80 : 10),
            child: const Text('Change Padding'),
          ),
        ],
      ),
    );
  }
}