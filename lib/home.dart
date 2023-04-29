import 'package:basketball_point_counter/cubit/counter_cubit.dart';
import 'package:basketball_point_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => CounterCubit()),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: ((context, state) {}),
        builder: ((context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Points Counter'),
              backgroundColor: Colors.orange[700],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            '${CounterCubit.get(context).teamAPoints}',
                            style: const TextStyle(fontSize: 100),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: MaterialButton(
                              onPressed: () {
                                CounterCubit.get(context)
                                    .teamAandBIncrement(1, 'A');
                              },
                              child: const Text('Add 1 Point'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: MaterialButton(
                              onPressed: () {
                                CounterCubit.get(context)
                                    .teamAandBIncrement(2, 'A');
                              },
                              child: const Text('Add 2 Point'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: MaterialButton(
                              onPressed: () {
                                CounterCubit.get(context)
                                    .teamAandBIncrement(3, 'A');
                              },
                              child: const Text('Add 3 Point'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 2,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            '${CounterCubit.get(context).teamBPoints}',
                            style: const TextStyle(fontSize: 100),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: MaterialButton(
                              onPressed: () {
                                CounterCubit.get(context)
                                    .teamAandBIncrement(1, 'B');
                              },
                              child: const Text('Add 1 Point'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: MaterialButton(
                              onPressed: () {
                                CounterCubit.get(context)
                                    .teamAandBIncrement(2, 'B');
                              },
                              child: const Text('Add 2 Point'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: MaterialButton(
                              onPressed: () {
                                CounterCubit.get(context)
                                    .teamAandBIncrement(3, 'B');
                              },
                              child: const Text('Add 3 Point'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.orange[400],
                        borderRadius: BorderRadius.circular(5)),
                    child: MaterialButton(
                      child: const Text('Reset'),
                      onPressed: () {
                        CounterCubit.get(context).removeteamAandBIncrement();
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
