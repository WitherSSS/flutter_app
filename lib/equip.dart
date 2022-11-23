import 'package:flutter/material.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('Random Page',
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