import 'package:app/src/components/buttons.dart';
import 'package:app/src/config/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.maybePop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 24,
                    )),
                SizedBox(
                  width: 26,
                ),
                Text('My Wallet', style: Theme.of(context).textTheme.headline2)
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1.0, color: Color(0xFFFFDFDFDF)),
                color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Wallet Balance',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '₦9,384,934',
                          style: TextStyle(
                              fontSize: 28,
                              color: ColorConstants.contributionWalletMainBlue,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.info_outline_rounded,
                        color: Colors.black,
                        size: 24,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap:(){

                        } ,
                          child: MyPrimaryButton(
                        title: 'Fund Wallet',
                        buttonColor: ColorConstants.contributionWalletMainBlue,
                      )),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap:(){

                          } ,
                          child: MySecondaryButton(
                            title: 'Withdraw Funds',
                            buttonColor: ColorConstants.contributionWalletLightBlue,
                            buttonTextColor: ColorConstants.contributionWalletMainBlue,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1.0, color: Color(0xFFFFDFDFDF)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Interest Rate',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('3%',
                        style: TextStyle(
                            fontSize: 28,
                            color: ColorConstants.contributionWalletMainBlue,
                            fontWeight: FontWeight.bold)),
                    Text('p.a')
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1.0, color: Color(0xFFFFDFDFDF)),
                color: Colors.white),
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  title: Center(child: Text('Wallet Transactions', style: TextStyle(color: ColorConstants.contributionWalletMainBlue),)),
                backgroundColor: ColorConstants.contributionWalletLightBlue,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  indicatorColor: ColorConstants.contributionWalletMainBlue,
                  labelColor: ColorConstants.contributionWalletMainBlue,
                  tabs: [
                    Tab(text: 'All', ),
                    Tab(text: 'Credit'),
                    Tab(
                      text: 'Debit',
                    )
                  ],
                )),
                body: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//Todo: Add the pop up for the information about the wallet
