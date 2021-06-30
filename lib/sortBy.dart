import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class sortBy extends StatefulWidget {
  const sortBy({Key key}) : super(key: key);

  @override
  _sortByState createState() => _sortByState();
}

class _sortByState extends State<sortBy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child:Stack(
          children: <Widget>[
            Positioned(
              top: 60,
              left: 20,
              right: 0,
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              0.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.height * 0.02))
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.height * 0.009, 0.0, 0.0,0.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Color.fromRGBO(13, 63, 103,1),
                        onPressed: (){
                          print("hi");
                        },
                      ),
                    ),

                  ),
                ],
              ),),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          0.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.body1,
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 9.0),
                            child: Icon(FontAwesomeIcons.layerGroup,size: 18.0,color: Color.fromRGBO(116, 127, 158, 0.7),),
                          ),
                        ),
                        TextSpan(text: 'Sort By',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(116, 127, 158, 0.7)
                          ),

                                     ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.285,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.72,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 2.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 10  horizontally
                        0.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.body1,
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 9.0),
                            child: Icon(FontAwesomeIcons.slidersH,size: 18.0,color: Color.fromRGBO(13, 63, 103, 1),),
                          ),
                        ),
                        TextSpan(text: 'Filter',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(13, 63, 103, 1)
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
