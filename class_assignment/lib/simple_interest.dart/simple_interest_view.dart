import 'package:class_assignment/simple_interest.dart/cubit/simple_interst_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestView extends StatelessWidget {
  final TextEditingController _principalController = TextEditingController();

  final TextEditingController _rateController = TextEditingController();

  final TextEditingController _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _principalController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Principal Amount",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _rateController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Rate of Interest (%)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _timeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Time (Years)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                context.read<SimpleInterestCubit>().calculateInterest(
                      _principalController.text,
                      _rateController.text,
                      _timeController.text,
                    );
              },
              child: const Text("Calculate"),
            ),
            const SizedBox(height: 24.0),
            BlocBuilder<SimpleInterestCubit, String>(
              builder: (context, result) {
                return Text(
                  result,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
