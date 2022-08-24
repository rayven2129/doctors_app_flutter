import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_app_doctor/login_page/function/google_sign_in.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: const Center(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Home Page"),
            ),
            const ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.people),
            ),
            const ListTile(
              title: Text("Calendar"),
              leading: Icon(Icons.calendar_view_month),
            ),
            const ListTile(
              title: Text("Message"),
              leading: Icon(Icons.message),
            ),
            const ListTile(
              title: Text("Notification"),
              leading: Icon(Icons.notifications),
            ),
            ListTile(
              onTap: () {
                logout(context);
              },
              title: const Text("Logout"),
              leading: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: "Message",
              icon: Icon(Icons.message),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            label: "Calendar",
            icon: Icon(FontAwesomeIcons.calendar),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            label: "Doctors",
            icon: Icon(FontAwesomeIcons.userNurse),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
