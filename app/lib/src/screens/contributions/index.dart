import 'package:app/src/components/contribution_card.dart';
import 'package:app/src/components/my_money_formatter.dart';
import 'package:app/src/config/color_constants.dart';
import 'package:flutter/material.dart';

double amount = 7993344;

class ContributionsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Contributions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 15,
              ),
              MyMoneyFormatter(
                moneyValue: amount,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: ColorConstants.contributionMainGreen),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/wallet');
            },
            child: ContributionIndexCard(
              cardBackgroundColor: ColorConstants.contributionWalletLightBlue,
              cardMainColor: ColorConstants.contributionWalletMainBlue,
              cardAltColor: ColorConstants.contributionWalletAltBlue,
              cardIcon: Icons.account_balance_wallet_outlined,
              cardTitle: 'My Wallet',
            )),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/wallet');
          },
          child:  ContributionIndexCard(
    cardBackgroundColor: ColorConstants.contributionLightBlue,
    cardMainColor: ColorConstants.contributionMainBlue,
    cardAltColor: ColorConstants.contributionAltBlue,
    cardIcon: Icons.lock_outline,
    moneyValue: 1389490.40,
    cardTitle: 'Locked Plan',
    )),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/wallet');
          },
          child: ContributionIndexCard(
    cardBackgroundColor: ColorConstants.contributionLightGreen,
    cardMainColor: ColorConstants.contributionMainGreen,
    cardAltColor: ColorConstants.contributionAltGreen,
    moneyValue: 9348589,
    cardIcon: Icons.shield,
    cardTitle: 'Fixed Plan',
    )),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/wallet');
          },
            child: ContributionIndexCard(
              cardBackgroundColor: ColorConstants.contributionLightPurple,
              cardMainColor: ColorConstants.contributionMainPurple,
              cardAltColor: ColorConstants.contributionAltPurple,
              cardIcon: Icons.grade_outlined,
              cardTitle: 'Goal Plan',
            )),
      ],
    ));
  }
}
