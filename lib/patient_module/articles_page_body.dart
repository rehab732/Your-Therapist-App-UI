
import 'package:flutter/material.dart';



class ArticlesPageBody extends StatefulWidget {
  const ArticlesPageBody({Key? key}) : super(key: key);

  @override
  State<ArticlesPageBody> createState() => _ArticlesPageBodyState();
}

class _ArticlesPageBodyState extends State<ArticlesPageBody> {
  PageController pageController = PageController(viewportFraction: 1.0);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromARGB(255, 148, 147, 147),
      height: 730,
      child: ListView.builder(
          controller: pageController,
          itemCount: 3,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
    }

    return Stack(
      children: [
        Container(
          height: 300,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: index.isEven ? Color(0xFF69e5df) : Color(0xFF9294cc),
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
              color: Color.fromARGB(255, 50, 19, 227),
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                children: [
                  Text('When you love someone with depression',style: TextStyle(color: Colors.white,fontSize: 20,overflow: TextOverflow.ellipsis),),
              
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Text('How to support your loved one?',style:TextStyle(color: Colors.white,fontSize: 18,height: 1.2,)),
                   
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
    );
  }
}
