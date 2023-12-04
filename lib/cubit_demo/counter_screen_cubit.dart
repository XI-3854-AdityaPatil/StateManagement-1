import 'package:day5_demo/cubit_demo/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreenCubit extends StatefulWidget {
  const CounterScreenCubit({super.key});

  @override
  State<CounterScreenCubit> createState() => _CounterScreenCubitState();
}

class _CounterScreenCubitState extends State<CounterScreenCubit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                if (state is UpdateCounterState) {
                  return Text(
                    "${state.count}",
                    style: const TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold),
                  );
                } else {
                  return const Text(
                    "0",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  );
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().incrementCounter();
                  },
                  child: const Text(
                    "+",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrementCounter();
                  },
                  child: const Text(
                    "-",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
