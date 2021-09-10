import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calculator")),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Output: ",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter number 1"),
                ),
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter number 2"),
                ),
                const Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("+"),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("-"),
                        style: ElevatedButton.styleFrom(primary: Colors.green)),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("*"),
                        style: ElevatedButton.styleFrom(primary: Colors.green)),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("/"),
                        style: ElevatedButton.styleFrom(primary: Colors.green))
                  ],
                )
              ],
            )));
  }
}
