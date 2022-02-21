import 'package:flutter/material.dart';
import 'package:stepperdatapassing/details.dart';

class Setup extends StatelessWidget {
  const Setup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup'),
      ),
      body: Stepper(
        onStepContinue: () {
          //How to get Reactiveform data here???
          //for uploading data to server
        },
        steps: const [
          Step(
            title: Text('Details'),
            content: Detials(),
          ),
        ],
      ),
    );
  }
}
