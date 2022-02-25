import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stepperdatapassing/core/textfields_name.dart';
import 'package:stepperdatapassing/form.fields.dart';

class Detials extends StatelessWidget {
  const Detials({Key? key}) : super(key: key);

  // ReactiveTextFields using ReactiveFormBuilder

  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
      form: () => getDetailForm(),
      builder: (context, formGroup, child) {
        return Column(
          children: [
            ReactiveTextField(
              controller: TextEditingController(text: "testing"),
              formControlName: TextFieldsName.resDtls.resName,
              keyboardType: TextInputType.name,
            ),
          ],
        );
      },
    );
  }
}
