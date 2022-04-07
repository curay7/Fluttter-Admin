import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter/controller/UserController.dart';
import 'package:web_flutter/view/home/page/DarhboardChat.dart';
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

int _selectedDestination = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 215,
          child: Drawer(
            child: Card(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(83, 30, 65, 25),
                    child: Container(
                        width: 70,
                        height: 64,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                child: Text(
                                  "Logo",
                                  style: TextStyle(
                                      fontFamily: 'DMSans',
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  "Wons",
                                  style: TextStyle(
                                      fontFamily: 'DMSans',
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),

                  TextButton(
                    onPressed: () {
                      selectDestination(0);
                    },
                    child: (_selectedDestination == 0)
                        ? ActiveAppButton(
                            textName: "Dashboard",
                            customIcon:
                                Icon(Icons.dashboard, color: Color(0xff3A36DB)),
                          )
                        : InActiveAppButton(
                            textName: "Dashboard",
                            customIcon: Icon(
                              Icons.dashboard,
                              color: Colors.grey,
                            ),
                          ),
                  ),

                  TextButton(
                    onPressed: () {
                      selectDestination(1);
                    },
                    child: (_selectedDestination == 1)
                        ? ActiveAppButton(
                            textName: "Analytics",
                            customIcon:
                                Icon(Icons.analytics, color: Color(0xff3A36DB)),
                          )
                        : InActiveAppButton(
                            textName: "Analytics",
                            customIcon: Icon(
                              Icons.analytics,
                              color: Colors.grey,
                            ),
                          ),
                  ),

                  TextButton(
                    onPressed: () {
                      selectDestination(2);
                    },
                    child: (_selectedDestination == 2)
                        ? ActiveAppButton(
                            textName: "Invoice",
                            customIcon:
                                Icon(Icons.menu_book, color: Color(0xff3A36DB)),
                          )
                        : InActiveAppButton(
                            textName: "Invoice",
                            customIcon: Icon(
                              Icons.menu_book,
                              color: Colors.grey,
                            ),
                          ),
                  ),

                  TextButton(
                    onPressed: () {
                      selectDestination(3);
                    },
                    child: (_selectedDestination == 3)
                        ? ActiveAppButton(
                            textName: "Schedule",
                            customIcon: Icon(Icons.calendar_view_day,
                                color: Color(0xff3A36DB)),
                          )
                        : InActiveAppButton(
                            textName: "Schedule",
                            customIcon: Icon(
                              Icons.calendar_view_day,
                              color: Colors.grey,
                            ),
                          ),
                  ),

                  TextButton(
                    onPressed: () {
                      selectDestination(4);
                    },
                    child: (_selectedDestination == 4)
                        ? ActiveAppButton(
                            textName: "Calendar",
                            customIcon: Icon(Icons.calendar_today_rounded,
                                color: Color(0xff3A36DB)),
                          )
                        : InActiveAppButton(
                            textName: "Calendar",
                            customIcon: Icon(
                              Icons.calendar_today,
                              color: Colors.grey,
                            ),
                          ),
                  ),
                  TextButton(
                    onPressed: () {
                      selectDestination(5);
                    },
                    child: (_selectedDestination == 5)
                        ? ActiveAppButton(
                            textName: "Messages",
                            customIcon: Icon(Icons.mark_chat_unread,
                                color: Color(0xff3A36DB)),
                          )
                        : InActiveAppButton(
                            textName: "Messages",
                            customIcon: Icon(
                              Icons.mark_chat_unread,
                              color: Colors.grey,
                            ),
                          ),
                  ),
                  TextButton(
                    onPressed: () {
                      selectDestination(6);
                    },
                    child: (_selectedDestination == 6)
                        ? ActiveAppButton(
                            textName: "Notifications",
                            customIcon: Icon(Icons.notifications,
                                color: Color(0xff3A36DB)),
                          )
                        : InActiveAppButton(
                            textName: "Notifications",
                            customIcon: Icon(
                              Icons.notifications,
                              color: Colors.grey,
                            ),
                          ),
                  ),
                  TextButton(
                    onPressed: () {
                      selectDestination(7);
                    },
                    child: (_selectedDestination == 7)
                        ? ActiveAppButton(
                            textName: "Settings",
                            customIcon:
                                Icon(Icons.settings, color: Color(0xff3A36DB)),
                          )
                        : InActiveAppButton(
                            textName: "Settings",
                            customIcon: Icon(
                              Icons.settings,
                              color: Colors.grey,
                            ),
                          ),
                  ),

                  // ListTile(
                  //   leading:
                  //       Icon(Icons.notifications_outlined), //Icons.file_upload
                  //   title: Text('Notifications',
                  //       style: TextStyle(
                  //           fontFamily: 'DMSansMedium', fontSize: 16)),
                  //   selected: _selectedDestination == 4,
                  //   onTap: () => selectDestination(4),
                  // ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Padding(padding: EdgeInsets.only(top: 70)),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Log Out',
                        style: TextStyle(
                            fontFamily: 'DMSansMedium', fontSize: 16)),
                    selected: _selectedDestination == 3,
                    onTap: () {
                      userController.user.value = [];
                      Get.toNamed('/login');
                    },
                  ),
                ],
              ),
            ),
          ),
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
      return Text("Test"); //Dashboard();
    } else if (_selectedDestination == 1) {
      return DashboardUser();
    } else if (_selectedDestination == 2) {
      return DashboardProduct();
    } else if (_selectedDestination == 3) {
      return DashboardChat();
    }
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}

AppBarButton(String textName, Icon customIcon) {}

class ActiveAppButton extends StatelessWidget {
  final String textName;
  final Icon customIcon;
  const ActiveAppButton({
    required this.textName,
    required this.customIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
            color: Colors.grey[200],
          ),
          padding: EdgeInsets.fromLTRB(23, 11, 0, 11),
          child: customIcon,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            textName,
            style: TextStyle(
                fontFamily: 'DMSansMedium',
                fontSize: 16,
                color: Color(0xff3A36DB)
                //Font size: 16px
                //Line height: 21px
                ),
          ),
        ),
      ],
    );
  }

  selectDestination(int i) {}
}

class InActiveAppButton extends StatelessWidget {
  final String textName;
  final Icon customIcon;
  const InActiveAppButton({required this.textName, required this.customIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
            color: Colors.transparent,
          ),
          padding: EdgeInsets.fromLTRB(23, 11, 0, 11),
          child: customIcon,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            textName,
            style: TextStyle(
                fontFamily: 'DMSansMedium', fontSize: 16, color: Colors.grey
                //Font size: 16px
                //Line height: 21px
                ),
          ),
        ),
      ],
    );
  }
}
