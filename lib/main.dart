// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:aswanny_app/privacy_policy.dart';
import 'package:aswanny_app/send_feedback.dart';
import 'package:aswanny_app/settings.dart';

import 'package:aswanny_app/login_screen.dart';

import 'contacts.dart';
import 'dashboard.dart';
import 'events.dart';
import 'my_drawer_header.dart';
import 'notes.dart';
import 'notifications.dart';

import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/images/logo.gif',
              height: 325,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "مديرية التربية والتعليم بأسوان     ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontFamily: 'Cairo',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "إدارة أسوان التعليمية ",
              style: TextStyle(
                color: Color.fromARGB(255, 9, 4, 101),
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            )
          ],
        ),
      ),
    );
  }
}

//class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  );
}
//}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 101, 120, 182),
        title: Text(
          "التطوير التكنولوجى ",
          style:
              TextStyle(color: Colors.white, fontFamily: 'Cairo', fontSize: 30),
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "الرئيسية", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "تسجيل أعطال التابلت", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "تسجيل أعطال الشاشات", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "تسجيل أعطال البنية التكنولوجية", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "التسجيل فى مسابقات أيسف", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, " التسحيل فى الدورات ", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(
              7,
              "تسحيل حالة الإختبارات الإلكترونية",
              Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "تسجيل تقرير استلام التابلت", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
          ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                    (route) => false);
              },
              child: const Text("Log out"))
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.blue[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
