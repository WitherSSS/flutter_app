import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'chara.dart';
import 'settings.dart';
import 'about.dart';
import 'equip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int pageindex = 0;
  String pagetitle = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pagetitle,
          style: const TextStyle(color: Colors.blue),
        ),
        backgroundColor: const Color(0x4039c5bb),
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: pageindex == 0
          ? const HomePage()
          : pageindex == 1
              ? const ListPage()
              : const RandomPage(),
      extendBody: true,
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff39c5bb),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Myapp',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'sans-serif'),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const CircleAvatar(
                child: Icon(Icons.home),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  pageindex = 0;
                  pagetitle = 'Home';
                });
              },
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              title: const Text('List'),
              leading: const CircleAvatar(
                child: Icon(Icons.list),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  pageindex = 1;
                  pagetitle = 'List';
                });
              },
            ),
            ListTile(
              title: const Text('Random'),
              leading: const CircleAvatar(
                child: Icon(Icons.radio_button_checked_sharp),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  pageindex = 2;
                  pagetitle = 'Random';
                });
              },
            ),
            const Divider(
              height: 20,
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const CircleAvatar(
                child: Icon(Icons.settings),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
            ListTile(
              title: const Text('About'),
              leading: const CircleAvatar(
                child: Icon(Icons.info),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Exit'),
              leading: const CircleAvatar(
                child: Icon(Icons.exit_to_app),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoModalPopupRoute(
                      builder: (context) => const ExitBox()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ExitBox extends StatelessWidget {
  const ExitBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Exit"),
      content: const Text("Are you sure to exit?"),
      actions: <Widget>[
        TextButton(
          child: const Text("no"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          child: const Text("yes"),
          onPressed: () {
            exit(0);
          },
        ),
      ],
    );
  }
}
