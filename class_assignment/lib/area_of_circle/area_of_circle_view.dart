import 'package:class_assignment/area_of_circle/cubit/area_of_circle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaofCircleView extends StatelessWidget {
  final TextEditingController _radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circle Area Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _radiusController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Radius",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                context
                    .read<AreaOfCircleCubit>()
                    .calculateCircleArea(double.parse(_radiusController.text));
              },
              child: const Text("Calculate"),
            ),
            const SizedBox(height: 24.0),
            BlocBuilder<AreaOfCircleCubit, double>(
              builder: (context, result) {
                return Text(
                  result.toString(),
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
