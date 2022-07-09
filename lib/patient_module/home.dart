import 'package:flutter/material.dart';
import 'package:mobile_ui/patient_module/chart.dart';


class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Good Evening, Nesma",
            style: TextStyle(
              color: Color(0xFF001E6C),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/mood");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mood,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enter Your Mood ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "How Was Your Day ?",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF001E6C)),
              padding: MaterialStateProperty.all(EdgeInsets.all(8)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: 20,
          ),/*
          Container(
            height: 200,
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: chart(),
          ),
          SizedBox(
            height: 10,
          ),*/
          Stack(
      children: [
        Container(
          height: 300,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/mphoto1.jpeg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 95,
            margin: EdgeInsets.only(left: 10, right: 10, top: 205),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF001E6C),
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                children: [
                  Text( "just for testing the position ",style: TextStyle(color: Colors.white,fontSize: 20,overflow: TextOverflow.ellipsis),),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Text("salsabil mohamed hemeda mmm?",style:TextStyle(
                        color: Colors.white,fontSize: 18,height: 1.2,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  )))
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Material(
                  color:Color(0xFF001E6C),
                  elevation: 8,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                             Navigator.pushNamed(context, "/chat");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: NetworkImage(
                                'https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half-caption/public/field_blog_entry_images/2021-10/screen_shot_2021-03-27_at_3.32.18_pm.png?itok=9QcDrI3o'),
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text("Start Conversation",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              )),
                        ],
                      )),
                ),
                SizedBox(width: 60,),
                Material(
                  color:Color(0xFF001E6C),
                  elevation: 8,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                             Navigator.pushNamed(context, "/therapysession");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: NetworkImage(
                                'https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half-caption/public/field_blog_entry_images/2021-10/screen_shot_2021-03-27_at_3.32.18_pm.png?itok=9QcDrI3o'),
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text("Therapy Session",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              )),
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
