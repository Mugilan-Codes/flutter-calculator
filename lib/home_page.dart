import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, result = 0;

  TextEditingController t1 = TextEditingController(text: "0");
  TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calculator")),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Output: $result",
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: "Enter number 1"),
                  controller: t1,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: "Enter number 2"),
                  controller: t2,
                ),
                const Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: doAddition,
                      child: const Text("+"),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                    ElevatedButton(
                        onPressed: doSubtraction,
                        child: const Text("-"),
                        style: ElevatedButton.styleFrom(primary: Colors.green)),
                    ElevatedButton(
                        onPressed: doMultiplication,
                        child: const Text("*"),
                        style: ElevatedButton.styleFrom(primary: Colors.green)),
                    ElevatedButton(
                        onPressed: doDivision,
                        child: const Text("/"),
                        style: ElevatedButton.styleFrom(primary: Colors.green))
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                        onPressed: doClear,
                        child: const Text("Clear"),
                        color: Colors.greenAccent)
                  ],
                )
              ],
            )));
  }
}
