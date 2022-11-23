import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('List Page',
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