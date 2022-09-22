import 'package:cookbooks2/font.dart';
import'package:flutter/material.dart';
import 'package:cookbooks2/customFont.dart';
import 'package:cookbooks2/TabsDemo.dart';
import 'package:cookbooks2/validation.dart';

void main() {
  runApp(
      MaterialApp(home: const Home())

  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black45,
          title: const Text('Menu'),
        ),


        body:ListView( padding: EdgeInsets.all(100.0),
              children: [

                Image.network(width: 200,
                    height: 200,
                    alignment: AlignmentDirectional.topCenter,'https://wallpapercave.com/wp/wp2519499.jpg', ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                      primary: Colors.blueGrey[100]),
                      onPressed: () {
                final snackBar = SnackBar(
                content: const Text('Zuu Zuu Zuu Zuu !!!!'),
                action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                },
                ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                  child: const Text('Show Snackbar'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                  primary: Colors.blueGrey[100]),

                  child: Text("Export Font"),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> const font())
                    );
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                      primary: Colors.blueGrey[200]),
                  child: Text("Custom Fonts"),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> const customFonts())
                    );
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                      primary: Colors.blueGrey[300]),
                  child: Text("Demo Tabs"),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> const TabBarDemo())
                   );
                  },
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                      primary: Colors.blueGrey[400]),
                  child: Text("Validation"),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> const ValidationPage())
                    );
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                      primary: Colors.blueGrey),
                  child: Text("Lets begin"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                      primary: Colors.blueGrey[600]),
                  child: Text("Lets begin"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                      primary: Colors.blueGrey[700]),
                  child: Text("Lets begin"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                      primary: Colors.blueGrey[800]),
                  child: Text("Lets begin"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 40),
                      primary: Colors.blueGrey[900]),
                  child: Text("Lets begin"),
                  onPressed: () {},
                ),

              ],





        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEOvGby37eHbifxyfydJHZOdMzfzthpQpYFA&usqp=CAU',),),
                  color: Colors.black45,
                ),
                child: Text(''),
              ),
              ListTile(
                title: const Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Photos'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Videos'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

      ),
    );

  }
}