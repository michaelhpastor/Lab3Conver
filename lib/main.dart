import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: SingleChildScrollView(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
                    child: const Text("To: ")),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Enter email addres"),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Subject"),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: TextField(maxLines: 7,
                      decoration: InputDecoration(hintText: "Message", border: OutlineInputBorder()),
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
