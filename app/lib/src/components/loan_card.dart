import 'package:flutter/material.dart';
import 'package:app/src/config/color_constants.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:app/src/components/my_money_formatter.dart';

class LoanCard extends StatelessWidget {
  LoanCard(
      {this.icon, this.iconColor, this.loanTitle, this.loanAmount, this.loanBalance, this.progressColor, this.progressPercent, this.iconSelfColor = Colors.white, this.balanceColor = Colors.deepOrange});

  final IconData icon;
  final Color iconColor;
  final String loanTitle;
  final double loanBalance;
  final double loanAmount;
  final Color progressColor;
  final double progressPercent;
  final Color iconSelfColor;
  final Color balanceColor;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  color: iconColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                icon,
                size: 20,
                color: iconSelfColor,
              )),
          SizedBox(width: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                loanTitle,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                ),
              ),
              SizedBox(height: 8,),
              new LinearPercentIndicator(
                padding: EdgeInsets.zero,
                width: 100,
                progressColor: progressColor,
                percent: progressPercent,
                lineHeight: 4,
              ),
              SizedBox(height: 5,),
              Row(children: [
                Text('Bal. ', style: TextStyle(
                    color: balanceColor,
                    fontSize: 10
                )),
                MyMoneyFormatter(moneyValue: loanBalance, style: TextStyle(
                    color: balanceColor,
                    fontSize: 10
                ),)
              ],),
            ],
          ),
          SizedBox(width: 20,),
          MyMoneyFormatter(moneyValue: loanAmount, style: TextStyle(
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
    );
  }
}
