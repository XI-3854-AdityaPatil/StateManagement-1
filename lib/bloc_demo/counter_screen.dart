import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_counter",
              style:
                  const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                      debugPrint("Counter Value : $_counter");
                    },
                    child: const Text(
                      "+",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter--;
                      });
                      debugPrint("Counter Value : $_counter");
                    },
                    child: const Text(
                      "-",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
