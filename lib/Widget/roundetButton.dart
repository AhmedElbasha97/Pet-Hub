import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SocailIcon extends StatelessWidget {
  final String tybe;

  final Function press;
  const SocailIcon({
    Key key,
    this.tybe,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.09,

        decoration: BoxDecoration(
           color: decideColors(tybe),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child:deccideIcon(tybe,context),)
      ),
    );
  }
}

deccideIcon(String tybe,context) {
  double size =  MediaQuery.of(context).size.height * 0.04;
  switch(tybe){
    case "F":{
      return Icon(FontAwesomeIcons.facebookF,
          size: size ,
        color: Colors.white);
    }
    break;
    case "G":{
      return Icon(FontAwesomeIcons.google,
          size: size ,
          color: Colors.white);
    }
    break;
    default:{
      return  Icon(FontAwesomeIcons.twitter,
          size: size ,
          color: Colors.white);
    }
    break;
  }
}
decideColors(name) {
  switch(name){
    case "F":{
      return Color.fromRGBO(59, 89, 152,1);
    }
    break;
    case "G":{
      return Color.fromRGBO(220, 78, 65,1);
    }
    break;
    default:{
      return Color.fromRGBO(85, 172, 238,1);
    }
    break;
  }
}