import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_demo/counter_bloc.dart';
import 'bloc_demo/counter_events.dart';
import 'bloc_demo/counter_states.dart';

class CounterScreenBloc extends StatefulWidget {
  const CounterScreenBloc({super.key});

  @override
  State<CounterScreenBloc> createState() => _CounterScreenBlocState();
}

class _CounterScreenBlocState extends State<CounterScreenBloc> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is InitialCounterState) {
                  return Text(
                    "${state.count}",
                    style: const TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold),
                  );
                } else {
                  return Container();
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
                    context.read<CounterBloc>().add(IncrementEvent());
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementEvent());
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold),
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
