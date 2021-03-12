import 'package:app/src/components/buttons.dart';
import 'package:app/src/config/color_constants.dart';
import 'package:app/src/screens/loans/apply_for_loan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LockedScreen extends StatelessWidget {
  static Route<Object> _dialogBuilder(BuildContext context, Object arguments) {
    return DialogRoute<void>(
        context: context,
        builder: (BuildContext context) => Scaffold(
              body: ApplyForLoanForm(),
            ));
  }

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
                Text('My Locked Contribution',
                    style: Theme.of(context).textTheme.headline2)
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
                        Text('Locked Contribution Balance',
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
                              color: ColorConstants.contributionMainBlue,
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
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/create_locked_plan_form');
                          },
                          child: MyPrimaryButton(
                            title: 'Create New Locked Investment',
                            buttonColor: ColorConstants.contributionMainBlue,
                          )),
                    ),
                    SizedBox(
                      width: 14,
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
                            color: ColorConstants.contributionMainBlue,
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
                    title: Center(
                        child: Text(
                      'Locked Contribution Transactions',
                      style:
                          TextStyle(color: ColorConstants.contributionMainBlue),
                    )),
                    backgroundColor: ColorConstants.contributionLightBlue,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    automaticallyImplyLeading: false,
                    bottom: TabBar(
                      indicatorColor: ColorConstants.contributionMainBlue,
                      labelColor: ColorConstants.contributionMainBlue,
                      tabs: [
                        Tab(
                          text: 'All',
                        ),
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
