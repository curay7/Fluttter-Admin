import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter/controller/UserController.dart';
import 'package:web_flutter/view/home/page/Dashboard.dart';
import 'package:web_flutter/view/home/page/DashboardProduct.dart';
import 'package:web_flutter/view/home/page/DashboardUser.dart';

final UserController userController = Get.put(UserController());

class DashboardHome extends StatelessWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyHomePage(
      // ignore: invalid_use_of_protected_member
      title: userController.user.value.toString(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 70),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 100,
                    height: 70,
                  )),
              // Divider( Home favorite trending_up supervisor_account file_copy_rounded download settings exit_to_app
              //   height: 1,
              //   thickness: 1,
              // ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Over All'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
              ListTile(
                leading: Icon(Icons.contact_page),
                title: Text('Invoice'),
                selected: _selectedDestination == 1,
                onTap: () => selectDestination(1),
              ),
              ListTile(
                leading: Icon(Icons.menu_book),
                title: Text('Products'),
                selected: _selectedDestination == 2,
                onTap: () => selectDestination(2),
              ),
              ListTile(
                leading: Icon(Icons.mark_chat_unread_outlined),
                title: Text('Message'),
                selected: _selectedDestination == 3,
                onTap: () => selectDestination(3),
              ),
              ListTile(
                leading: Icon(Icons.notifications_outlined), //Icons.file_upload
                title: Text('Notifications'),
                selected: _selectedDestination == 4,
                onTap: () => selectDestination(4),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(padding: EdgeInsets.only(top: 70)),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Log Out'),
                selected: _selectedDestination == 3,
                onTap: () {
                  userController.user.value = [];
                  Get.toNamed('/login');
                },
              ),
            ],
          ),
        ),
        VerticalDivider(
          width: 1,
          thickness: 1,
        ),
        Expanded(
          child: Scaffold(
            // appBar: AppBar(
            //   title: Text(widget.title),
            //   automaticallyImplyLeading: false,
            // leading: IconButton(
            //   icon: Icon(Icons.ac_unit),
            //   onPressed: () => Navigator.of(context).pop(),
            // ),
            // ),
            body: _page(),
          ),
        ),
      ],
    );
  }

  _page() {
    if (_selectedDestination == 0) {
      return Dashboard();
    } else if (_selectedDestination == 1) {
      return DashboardUser();
    } else if (_selectedDestination == 2) {
      return DashboardProduct();
    } else if (_selectedDestination == 3) {
      return Text("Page Four");
    }
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
