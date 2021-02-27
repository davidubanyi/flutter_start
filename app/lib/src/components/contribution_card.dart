import 'package:app/src/components/my_money_formatter.dart';
import 'package:flutter/material.dart';

class ContributionIndexCard extends StatelessWidget {
  ContributionIndexCard(
      {this.cardBackgroundColor,
      this.cardMainColor,
      this.cardAltColor,
      this.cardIcon,
      this.cardTitle,
      this.moneyValue = 123456.0});
  final Color cardBackgroundColor;
  final Color cardMainColor;
  final Color cardAltColor;
  final IconData cardIcon;
  final String cardTitle;
  final double moneyValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardBackgroundColor,
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 29),
                child: Icon(
                  cardIcon,
                  color: cardMainColor,
                  size: 30,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    cardTitle,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyMoneyFormatter(
                    moneyValue: moneyValue,
                    style: TextStyle(
                        color: cardMainColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 23),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: cardAltColor,
            ),
            height: 28,
            width: 48,
            child: Icon(
              Icons.arrow_right_alt_outlined,
              color: cardMainColor,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
