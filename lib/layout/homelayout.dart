import 'package:flutter/material.dart';
import '../aweerenesspages/main_awareness_page.dart';
import '../patient_module/home.dart';
import '../patient_module/mood.dart';
import '../patient_module/profile.dart';
import '../patient_module/session.dart';





class Homelayout extends StatefulWidget{
  @override
  State<Homelayout> createState() => _HomelayoutState();
}

class _HomelayoutState extends State<Homelayout> {
  @override
  int currentindex=0;
   List<Widget> screens = [homepage(),sessions(),MainAwarenessPage(),mood(),editprofile()];
  List<String> titels = ["Home", "My Sessions", "Awareness","Mood","profile"];
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xFF001E6C),
      leading:Icon(Icons.arrow_back_rounded),
      title: Center(child: Text(titels[currentindex])),
      actions: [
        Icon(Icons.more_horiz),
      ],
    ),
    body: screens[currentindex],
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Color(0xFF001E6C),
       fixedColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 40,
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.date_range
              ),
              label: "My session",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: "Awareness",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mood,
              ),
              label: "Mood",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ]),

  );
  }
}