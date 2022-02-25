import 'package:flutter/cupertino.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stepperdatapassing/core/textfields_name.dart';

//FormGroup for fields

FormGroup getDetailForm({BuildContext? context}) {
  return fb.group({
    TextFieldsName.resDtls.resName: FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
  });
}
