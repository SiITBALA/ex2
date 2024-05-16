import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

   void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else {
        _counter = 0;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Increment Cuonter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "นับไปแล้ว $_counter ครั้ง",
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: incrementCounter,
              child: const Icon(Icons.add),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 182, 252, 6)),
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: decrementCounter,
              child: const Icon(Icons.remove),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 232, 5, 5))
              ),
            ),
          ],
        ),
      ),
      


    );
  }
}
