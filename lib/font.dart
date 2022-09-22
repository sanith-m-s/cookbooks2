import 'package:flutter/material.dart';
class font extends StatefulWidget {
  const font({Key? key}) : super(key: key);

  @override
  State<font> createState() => _fontState();
}

class _fontState extends State<font> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black45,
        title: const Text('menu'),
      ),
      body: const Center(
        // This Text widget uses the Raleway font.
        child: Text(
          'Using the Raleway font from the awesome_package',
          style: TextStyle(
            fontFamily: 'Raleway',
            package: 'awesome_package',
          ),
        ),
      ),
    );
  }
}