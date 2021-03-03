import 'package:flutter/material.dart';

class NewUserDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Text('Welcome', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
            Container(
              constraints: BoxConstraints.expand(height: 200),
              margin: EdgeInsets.only(top: 20),
              child: GestureDetector(
                  onTap: ()=>{},
                  child: Image.asset('assets/images/fund_wallet_dashboard.png', fit: BoxFit.fill,)
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Choose Plan', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
            ),),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 145,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Image.asset('assets/images/create_locked_plan.png'),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 200,
                    child: Image.asset('assets/images/create_fixed_plan.png'),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 200,
                    child: Image.asset('assets/images/create_goal_plan.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Active Loan', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
            ),),
            Container(
              constraints: BoxConstraints.expand(height: 148),
              margin: EdgeInsets.only(top: 20),
              child: GestureDetector(
                  onTap: ()=>{},
                  child: Image.asset('assets/images/no_active_loan.png', fit: BoxFit.fill,)
              ),
            ),
          ],
        ),
      ),
    )
    );
}}
