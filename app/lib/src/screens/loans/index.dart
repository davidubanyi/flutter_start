import 'package:app/src/components/loan_card.dart';
import 'package:app/src/config/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          LoanCard(
            icon: CupertinoIcons.briefcase,
            iconColor: ColorConstants.contributionMainOrange,
            loanAmount: 1922484,
            loanBalance: 28990,
            progressColor: ColorConstants.contributionMainOrange,
            progressPercent: 0.7,
            loanTitle: 'Personal Loan',
          ),
          SizedBox(
            height: 10,
          ),
          Text('Previous Loan(s)',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          LoanCard(
            icon: Icons.check,
            iconColor: ColorConstants.contributionLightGreen,
            loanTitle: 'Business Loan',
            loanBalance: 0,
            loanAmount: 300000,
            progressColor: Colors.green,
            progressPercent: 1,
            iconSelfColor: ColorConstants.contributionMainGreen,
            balanceColor: ColorConstants.contributionMainGreen,
          )
        ],
      ),
    );
  }
}
