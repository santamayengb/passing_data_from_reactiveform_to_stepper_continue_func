import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stepperdatapassing/core/textfields_name.dart';

class Setup extends StatefulWidget {
  const Setup({Key? key}) : super(key: key);

  @override
  State<Setup> createState() => _SetupState();
}

class _SetupState extends State<Setup> {
  final form = FormGroup({
    TextFieldsName.resDtls.resName: FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(3),
        Validators.maxLength(20),
      ],
    )
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup'),
      ),
      body: Stepper(
          onStepContinue: () {
            if (form.valid) {
              log('form is valid');
              log(form.value.toString());
            } else {
              log('form is not valid');
            }
          },
          steps: getStep()),
    );
  }

  getStep() {
    return [
      Step(
        title: const Text('Details'),
        content: ReactiveForm(
          formGroup: form,
          child: Column(
            children: [
              ReactiveTextField(
                formControlName: TextFieldsName.resDtls.resName,
              )
            ],
          ),
        ),
      ),
    ];
  }
}
