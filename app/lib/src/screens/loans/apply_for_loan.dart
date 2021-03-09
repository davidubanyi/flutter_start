import 'package:app/src/config/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

class ApplyForLoanForm extends StatefulWidget {
  @override
  _ApplyForLoanFormState createState() => _ApplyForLoanFormState();
}

class _ApplyForLoanFormState extends State<ApplyForLoanForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
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
            )
          ],
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
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Text(
        formTitle,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
