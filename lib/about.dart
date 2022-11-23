import 'package:flutter/material.dart';
import 'brower.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('\n  This application is still under development\n'),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const Browser(
                  url: "https://github.com/WitherSSS",
                  title: "Withersss",
                );
              }));
            },
            child: const Text("Github: https://github.com/WitherSSS"),
          ),
          const Text("  version: 0.0.1-alpha\n"),
          const Text("  Date: 2022-11-23\n"),
          const Text("  Copyright (c) 2022 WitherSSS\n"),
          const Text("  This project is licensed under the MIT License.")
        ],
      ),
    );
  }
}
