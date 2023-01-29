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
  const CarForm({super.key});

  @override
  State<CarForm> createState() => _CarFormState();
}

class _CarFormState extends State<CarForm> {
  String header = "Add a new Car";
  String defaultImagePath = "";
  String owner = "Hashirama";
  String miles = "100000";
  DateTime lastservice = DateTime(2023, 1, 29, 11, 35);
  String Mechanic = "Sasuke";
  late FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  FormGroup buildForm() => fb.group(<String, Object>{
        'Carplates': FormControl<String>(validators: [Validators.required]),
        'image': [
          '',
        ],
        'carOwner': [owner, Validators.required],
        'Miles': [miles, Validators.required],
        'LastService': [
          lastservice,
        ],
        'Mechanic': [Mechanic]
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
                child: Container(
              //header;
              child: Text(
                header,
                style: AppStyle.txtRobotoMedium24Gray600,
              ),
            )),
            Container(
                child: ReactiveFormBuilder(
              form: buildForm,
              builder: (context, formGroup, child) {
                return Column(
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
                          labelText: 'Miles',
                          helperText: '',
                          helperStyle: TextStyle(height: 0.7),
                          errorStyle: TextStyle(height: 0.7),
                        )),
                    Container(
                      child: CustomButton(
                        height: 40,
                        width: 250,
                        text: "Find Miles with Camera",
                        padding: ButtonPadding.PaddingPDA10,
                      ),
                      padding: getPadding(left: 10, right: 10),
                    ),
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
                            Future.delayed(const Duration(milliseconds: 100),
                                () {
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
                    Container(
                        child: CustomButton(
                      height: 60,
                      width: 300,
                      text: "Submit",
                      padding: ButtonPadding.PaddingPDA10,
                    ))
                  ],
                );
              },
            ))
          ],
        ),
        margin: getMargin(right: 10, left: 10),
      ),
    );
  }
}
