import 'package:app/src/config/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:select_form_field/select_form_field.dart';

class CreateLockedPlanForm extends StatefulWidget {
  @override
  _CreateLockedPlanFormState createState() => _CreateLockedPlanFormState();
}

class _CreateLockedPlanFormState extends State<CreateLockedPlanForm> {
  final _formKey = GlobalKey<FormState>();
  final List<Map<String, dynamic>> _frequencyOptions = [
    {'value': 'weekly', 'label': 'Weekly Contributions'},
    {'value': 'monthly', 'label': 'Monthly Contributions'},
    {'value': 'daily', 'label': 'Daily Contributions'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              FormTitle(
                formTitle: 'Loan Repayment',
              ),
              TextFormField(
                inputFormatters: [
                  CurrencyTextInputFormatter(symbol: '₦', decimalDigits: 0)
                ],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Amount to Repay",
                    labelStyle: TextStyle(color: Colors.black87),
                    alignLabelWithHint: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorConstants.containerBorderColor,
                            width: 1))),
              ),
              SizedBox(
                height: 20,
              ),
              SelectFormField(
                decoration: InputDecoration(
                  labelText: 'Contribution Frequency',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorConstants.containerBorderColor,
                          width: 1)),
                ),
                type: SelectFormFieldType.dropdown,
                labelText: 'Repayment Frequency',
                items: _frequencyOptions,
                initialValue: 'daily',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FormTitle extends StatelessWidget {
  FormTitle({this.formTitle});
  final String formTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 35),
      child: Text(
        formTitle,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
