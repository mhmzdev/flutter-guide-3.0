import 'package:flutter/material.dart';

class AppBarTopic extends StatelessWidget {
  const AppBarTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        leadingWidth: 100.0,
        title: const Text('I am your Title'),
        centerTitle: false,
        elevation: 8.0,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('App Bar'),
      ),
    );
  }
}
