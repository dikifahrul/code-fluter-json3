import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Open Data'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Welcome'),
              Tab(icon: Icon(Icons.favorite), text: 'Favorite'),
              Tab(icon: Icon(Icons.help_outline), text: 'Help'),
              Tab(icon: Icon(Icons.info_outline), text: 'About'),
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Welcome Page'),
            ),
            Center(
              child: Text('Favorite Page'),
            ),
            Center(
              child: Text('Help Page'),
            ),
            Center(
              child: Text('About Page'),
            ),
          ],
        ),
      ),
    );
  }
}