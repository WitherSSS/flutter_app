import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('Home Page',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontFamily: 'sans-serif')),
          ),
        ],
      ),
    );
  }
}
