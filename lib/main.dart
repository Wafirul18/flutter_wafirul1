import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = "Wafirul Fahmi";
    TextEditingController textfortosend = TextEditingController();
    return MaterialApp(
      initialRoute: '/seconpage',
      routes: {
        '/seconpage': (context) => SecondPage(
            textfromController: name, textfromTextField: textfortosend.text),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Route"),
        ),
        body: Builder(
          builder: (context) => Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: textfortosend,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Isi Disini"),
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/seconpage');
                    //MaterialPageRoute(builder: (context) => SecondPage());
                  },
                  color: Colors.blue,
                  child: Text("Pergi ke Halaman 2",
                      style: TextStyle(color: Colors.white))),
            ],
          )),
        ),
      ),
    );
  }
}
