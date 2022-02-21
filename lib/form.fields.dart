import 'package:reactive_forms/reactive_forms.dart';
import 'package:stepperdatapassing/core/textfields_name.dart';

//FormGroup for fields

FormGroup getDetailForm() {
  return fb.group({
    TextFieldsName.restaurantDetails.restaurantName:
        FormControl<String>(validators: [
      Validators.required,
    ]),
  });
}
