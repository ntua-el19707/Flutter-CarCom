import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/custom_button.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class CarForm extends StatefulWidget {
  const CarForm(
      {super.key,
      required this.CarPlates,
      required this.Mechanic,
      required this.header,
      required this.lastservice,
      required this.miles,
      required this.owner});
  final String header;
  final String CarPlates;
  final String owner;
  final double miles;
  final DateTime lastservice;
  final String Mechanic;
  @override
  State<CarForm> createState() => _CarFormState();
}

class _CarFormState extends State<CarForm> {
  late FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _focusNode = FocusNode();
//   print("${widget.CarPlates} ${widget.owner} ${widget.miles}");
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  FormGroup Form = fb.group({});
  @override
  Widget build(BuildContext context) {
    Form = fb.group(<String, Object>{
      'Carplates': [widget.CarPlates, Validators.required],
      'image': [
        '',
      ],
      'carOwner': [widget.owner, Validators.required],
      'Miles': [widget.miles.toStringAsFixed(2), Validators.required],
      'LastService': [
        widget.lastservice,
      ],
      'Mechanic': [""]
    });

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
                child: Container(
              //header;
              child: Text(
                widget.header,
                style: AppStyle.txtRobotoMedium24Gray600,
              ),
            )),
            Container(
                child: ReactiveForm(
                    formGroup: this.Form,
                    child: Column(
                      children: [
                        ReactiveTextField<String>(
                            formControlName: 'Carplates',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'Car Plates must not be empty',
                            },
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              labelText: 'Car Plates',
                              helperText: '',
                              helperStyle: TextStyle(height: 0.7),
                              errorStyle: TextStyle(height: 0.7),
                            )),
                        ReactiveTextField<String>(
                            formControlName: 'carOwner',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'Driver must not be empty',
                            },
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              labelText: 'Driver',
                              helperText: '',
                              helperStyle: TextStyle(height: 0.7),
                              errorStyle: TextStyle(height: 0.7),
                            )),
                        ReactiveTextField<String>(
                            formControlName: 'Miles',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'Miles must not be empty',
                            },
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              labelText: 'Miles (km)',
                              helperText: '',
                              helperStyle: TextStyle(height: 0.7),
                              errorStyle: TextStyle(height: 0.7),
                            )),
                        Container(child: Text("Mechanic: ${widget.Mechanic}")),
                        ReactiveDatePicker<DateTime>(
                          formControlName: 'LastService',
                          firstDate: DateTime(1985),
                          lastDate: DateTime(2030),
                          builder: (context, picker, child) {
                            Widget suffix = InkWell(
                              onTap: () {
                                // workaround until https://github.com/flutter/flutter/issues/39376
                                // will be fixed

                                // Unfocus all focus nodes
                                _focusNode.unfocus();

                                // Disable text field's focus node request
                                _focusNode.canRequestFocus = false;

                                // clear field value
                                picker.control.value = null;

                                //Enable the text field's focus node request after some delay
                                Future.delayed(
                                    const Duration(milliseconds: 100), () {
                                  _focusNode.canRequestFocus = true;
                                });
                              },
                              child: const Icon(Icons.clear),
                            );

                            if (picker.value == null) {
                              suffix = const Icon(Icons.calendar_today);
                            }

                            return ReactiveTextField(
                              onTap: (_) {
                                if (_focusNode.canRequestFocus) {
                                  _focusNode.unfocus();
                                  picker.showPicker();
                                }
                              },
                              valueAccessor: DateTimeValueAccessor(),
                              focusNode: _focusNode,
                              formControlName: 'LastService',
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: 'last Service ',
                                suffixIcon: suffix,
                              ),
                            );
                          },
                        ),
                        Container(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              double miles;
                              if (this.Form.valid) {
                                if (widget.header == "add a car") {
                                  print("Insert new Car");
                                } else {
                                  print("Edit Car");
                                }
                                print(
                                    "CarPlates:${this.Form.controls['Carplates']?.value} Owner:${this.Form.controls['carOwner']?.value} Miles:${this.Form.controls['Miles']?.value} lastService:${this.Form.controls['LastService']?.value}");
                                Navigator.pushNamed(context, "/");
                              } else {
                                print("Form is not valid");
                              }
                            },
                            child: Container(
                                child: CustomButton(
                              height: 60,
                              width: 300,
                              text: "Submit",
                              padding: ButtonPadding.PaddingPDA10,
                            )))
                      ],
                    )))
          ],
        ),
        margin: getMargin(right: 10, left: 10),
      ),
    );
  }
}
