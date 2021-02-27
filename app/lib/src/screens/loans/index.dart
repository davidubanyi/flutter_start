import 'package:app/src/components/my_money_formatter.dart';
import 'package:app/src/config/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LoanIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Loans',
          style: Theme.of(context).textTheme.headline2,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: ColorConstants.lightScaffoldBackgroundColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: <Widget>[
          Text('Active Loan',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10,20,10,20),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1.0, color: ColorConstants.containerBorderColor),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        color: ColorConstants.contributionMainOrange,
                        borderRadius: BorderRadius.circular(15)),
                    child: Icon(
                      Icons.indeterminate_check_box,
                      size: 20,
                    )),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Loan Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),
                    ),
                    SizedBox(height: 8,),
                    new LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      width: 100,
                      progressColor: Colors.red,
                      percent: 0.8,
                      lineHeight: 4,
                    ),
                    SizedBox(height: 5,),
                    Row(children: [
                      Text('Bal. ', style: TextStyle(
                          color: ColorConstants.contributionMainOrange,
                          fontSize: 10
                      )),
                      MyMoneyFormatter(moneyValue: 34596, style: TextStyle(
                        color: ColorConstants.contributionMainOrange,
                        fontSize: 10
                      ),)
                    ],),
                  ],
                ),
                SizedBox(width: 20,),
                MyMoneyFormatter(moneyValue: 153443, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.contributionWalletLightBlue,
                  ),
                  height: 28,
                  width: 48,
                  child: Icon(
                    Icons.arrow_right_alt_outlined,
                    color: ColorConstants.contributionWalletMainBlue,
                    size: 24,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
