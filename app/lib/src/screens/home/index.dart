// home screen contents
import 'package:app/src/config/color_constants.dart';
import 'package:app/src/screens/home/dashboard.dart';
import 'package:app/src/screens/loans/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/main.dart';
import 'package:app/src/screens/contributions/index.dart';

class HomeScreen extends StatelessWidget {
  // ignore: close_sinks
  final AuthenticationBloc authenticationBloc =
      AuthenticationBlocController().authenticationBloc;

  @override
  Widget build(BuildContext context) {
    authenticationBloc.add(GetUserData());
    return WillPopScope(
        onWillPop: () async => false,
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            cubit: authenticationBloc,
            builder: (BuildContext context, AuthenticationState state) {
              if (state is SetUserData) {
                return Container(
                  child: MyStatefulWidget(),
                );
              }
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }));
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    NewUserDashboard(),
    LoanIndex(),
    ContributionsHome(),
    Column(
      children: [
        Text(
          'Index 3: Settings',
          style: optionStyle,
        ),
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: ColorConstants.bottomNavBarBackground,
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Loans',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_rounded),
            label: 'Contributions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

//Todo: Add the app drawer to the settings screen
// drawer: Drawer(
// child: ListView(
// padding: EdgeInsets.zero,
// children: <Widget>[
// DrawerHeader(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(50),
// color: Colors.white),
// child: CachedImage(
// imageUrl:
// state.currentUserData.data.avatar,
// fit: BoxFit.fitWidth,
// errorWidget: Image.network(
// AllImages().kDefaultImage,
// ),
// width: 80,
// height: 80,
// placeholder: CircularProgressIndicator(),
// ),
// ),
// Switch(
// value:
// Provider.of<AppStateNotifier>(context)
// .isDarkMode,
// onChanged: (value) {
// Provider.of<AppStateNotifier>(context,
// listen: false)
//     .updateTheme(value);
// },
// ),
// ],
// )
// ],
// ),
// decoration: BoxDecoration(
// color: Theme.of(context).dividerColor,
// ),
// ),
// ListTile(
// title: Text(
// '${state.currentUserData.data.firstName} ${state.currentUserData.data.lastName}',
// style: Theme.of(context).textTheme.bodyText2),
// ),
// ListTile(
// title: Text(state.currentUserData.data.email,
// style: Theme.of(context).textTheme.bodyText2),
// ),
// ListTile(
// title: Text(state.currentUserData.ad.company,
// style: Theme.of(context).textTheme.bodyText2),
// ),
// ],
// ),
// ),

//Todo: Add the logout button to the settings screen
// IconButton(
// icon: Icon(Icons.logout),
// onPressed: () {
// authenticationBloc.add(UserLogOut());
// }),
