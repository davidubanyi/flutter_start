import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class MyMoneyFormatter extends StatelessWidget {
  MyMoneyFormatter({this.moneyValue = 123456.4, this.style});
  final double moneyValue;
  final TextStyle style;

  MoneyFormatterOutput fmf(MyMoneyFormatter myMoneyFormatter) =>
      FlutterMoneyFormatter(
              amount: myMoneyFormatter.moneyValue,
              settings: MoneyFormatterSettings(
                  symbol: '₦', symbolAndNumberSeparator: ''))
          .output;
  @override
  Widget build(BuildContext context) {
    return Text(
      fmf(this).symbolOnLeft,
      style: style,
    );
  }
}
