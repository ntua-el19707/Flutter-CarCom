import 'dart:math';

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

class BookApoitmentForm extends StatefulWidget {
  const BookApoitmentForm({super.key});

  @override
  State<BookApoitmentForm> createState() => _BookApoitmentFormState();
}

class _BookApoitmentFormState extends State<BookApoitmentForm> {
  String header = "Book  Appoitment";
  List<String> hours = [
    '8:00',
    '8:30',
    '9:00',
    '9:30',
    '10:00',
    '10:30',
    '11:00',
    '11:30',
    '12:00',
    '12:30',
    '13:00',
    '13:30',
    '14:00',
    '14:30',
    '15:00',
    '15:30',
    '16:00',
    '16:30',
    '17:00',
    '17:30',
    '18:00'
  ];
  String Mechanic = "Sasuke";
  late FocusNode _focusNode = FocusNode();
  final List<String> carPlates = ['NAR897', 'HAS134', 'JOP901'];
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

  String dropdownValue = 'NAR897';
  FormGroup buildForm() => fb.group(<String, Object>{
        'comment': ['', Validators.required],
        'Service': FormControl<DateTime>()
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
                style: AppStyle.txtRobotoMedium30green,
              ),
            )),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  "Mechanic:" + Mechanic,
                  style: AppStyle.txtRobotoMedium24Gray600,
                ),
                padding: EdgeInsets.all(10.0),
              ),
            ),
            Container(
                child: ReactiveFormBuilder(
              form: buildForm,
              builder: (context, formGroup, child) {
                return Column(
                  children: [
                    // Step 1.

// Step 2.
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: DropdownButton<String>(
                          // Step 3.
                          value: dropdownValue,
                          // Step 4.
                          items: carPlates
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 20, fontFamily: 'Roboto'),
                              ),
                            );
                          }).toList(),
                          alignment: Alignment.centerRight,
                          // Step 5.
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                        )),
                    ReactiveTextField<String>(
                        formControlName: 'comment',
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              'Comments must not be empty',
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          labelText: 'Comments',
                          helperText: '',
                          helperStyle: TextStyle(height: 0.7),
                          errorStyle: TextStyle(height: 0.7),
                        )),
                    ReactiveDatePicker<DateTime>(
                      formControlName: 'Service',
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
                          formControlName: 'Service',
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: 'Service ',
                            suffixIcon: suffix,
                          ),
                        );
                      },
                    ),
                    Row(children: [
                      Text("Time:"),
                      Container(
                          child: DropdownButton<String>(
                        // Step 3.
                        value: '8:00',
                        // Step 4.
                        items:
                            hours.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                            ),
                          );
                        }).toList(),
                        alignment: Alignment.centerRight,
                        // Step 5.
                        onChanged: (String? newValue) {
                          //  setState(() {
                          // dropdownValue = newValue!;
                          //});
                        },
                      ))
                    ]),

                    Container(
                      height: 10,
                    ),
                    Container(
                        child: CustomButton(
                      height: 60,
                      width: 300,
                      text: "Book Appoitment",
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
