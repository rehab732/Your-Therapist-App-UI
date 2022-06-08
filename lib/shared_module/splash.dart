import 'package:flutter/material.dart';

import 'login.dart';
class splash extends StatefulWidget{
  const splash ({ Key? key }) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState(){
    super.initState();
    _navigatetologin();
  }


  _navigatetologin()async{
    await Future.delayed(Duration(milliseconds: 4000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
  }

  @override
  Widget build (BuildContext context)
  {
   return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: NetworkImage( "https://www.asianmhc.org/wp-content/uploads/2021/07/amhc_illustration.png"),
            fit: BoxFit.contain,
            ),
            SizedBox(
             height: 30,
            ),
            Text("Your Therapist",
            style: TextStyle(
              fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Color(0xFF001E6C),
            ),
            ),
            SizedBox(
              height:30,
            ),
            Text('A Place To Feel Better',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF001E6C),
            ),),          
          ],
        ),
      ),
    );
  }
}