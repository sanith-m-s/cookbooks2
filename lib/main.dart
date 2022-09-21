import 'package:cookbooks2/font.dart';
import'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(home: const Home())

  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(

          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [


              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                    primary: Colors.lightGreenAccent),
                    onPressed: () {
              final snackBar = SnackBar(
              content: const Text('Yay! A SnackBar!'),
              action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
              },
              ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
                child: const Text('Show SnackBar'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                primary: Colors.black54),

                child: Text("export font"),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const font())
                  );
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                    primary: Colors.lightGreenAccent),
                child: Text("Lets begin"),
                onPressed: () {},
              )
            ],


          )
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

    );
  }
}