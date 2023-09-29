import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  int count = 0;

  void countPlus() {
    setState(() {
      count++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text("${count}", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countPlus();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

