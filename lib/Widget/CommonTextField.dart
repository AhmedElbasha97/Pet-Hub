import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TextFieldComp extends StatefulWidget {
  final String label;
  final String hint;
  final controller;
  final callback;
  final onChange;
  final maxCharacter;
  final regexPattern;
  final keyboardTypeNumber;
  final doubleValidation;
  final secondRegexPattern;
  bool textSafePassword;
  TextFieldComp(
      {this.label,
        this.hint,
        this.controller,
        this.callback,
        this.onChange = false,
        this.keyboardTypeNumber = false,
        this.textSafePassword = false,
        this.maxCharacter, this.regexPattern, this.doubleValidation=false, this.secondRegexPattern = "", });

  @override
  _TextFieldCompState createState() => _TextFieldCompState();
}

class _TextFieldCompState extends State<TextFieldComp> {
  var focused = false;
  var completeEditing = false;
  var validated = false;
  var encription = true;
  var data='';
  var fristTouch=true;
  void _toggle() {
    setState(() {
      encription = ! encription;
    });
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Container(
          width: constraints.maxWidth,
          child: FocusScope(
            child: Focus(
              onFocusChange: (focus) {
                setState(() {
                  focused = focus;
                  if (!fristTouch) {
                    if(widget.doubleValidation){
                      Pattern pattern = widget.regexPattern;
                      RegExp regex = new RegExp(pattern);
                      Pattern secondPattern = widget.secondRegexPattern;
                      RegExp secondregex = new RegExp(secondPattern);
                      if (regex.hasMatch(data)||secondregex.hasMatch(data)) {
                        validated = true;
                        completeEditing = true;
                      } else {
                        validated = false;
                        completeEditing = true;
                      }
                    }else{
                    Pattern pattern = widget.regexPattern;
                    RegExp regex = new RegExp(pattern);
                    if (regex.hasMatch(data)) {
                      validated = true;
                      completeEditing = true;
                    } else {
                      validated = false;
                      completeEditing = true;
                    }
                  }}
                  fristTouch = false;
                });
              },

              child: TextFormField(

                maxLength: widget.maxCharacter,
                onChanged: (value) {
                  if (widget.onChange) {
                    data=value;
                    widget.callback(value);
                  }
                },
                controller: widget.controller,
                obscureText: widget.textSafePassword?encription:false,
                keyboardType: widget.keyboardTypeNumber
                    ? TextInputType.number
                    : TextInputType.text,
                decoration: InputDecoration(
                    counterText: '',
                    fillColor:  Color.fromRGBO(240, 243, 246, 1),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Color.fromRGBO(240, 243, 246, 1),),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(width: 2, color: Color.fromRGBO(240, 243, 246, 1),),
                    ),
                    prefixIcon: detectTybeOfTextField(widget.label,context),
                    labelText: widget.label,
                    labelStyle: TextStyle(
                        color:
                        focused ? Color.fromRGBO(13, 63, 103, 1) : Color.fromRGBO(13, 63, 103, 1),
                        fontSize: 18,
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.bold),
                    hintText: widget.hint,
                    hintStyle: TextStyle(
                      fontFamily: 'Proxima',
                      color: Color.fromRGBO(182, 197, 209, 1),
                    ),
                    suffixIcon: widget.textSafePassword? Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,0,15.0),
                      child: IconButton(
                        onPressed: _toggle,
                        icon:encription? Icon(FontAwesomeIcons.eyeSlash,color:  Color.fromRGBO(13, 63, 103, 1),): Icon(FontAwesomeIcons.eye,color:  Color.fromRGBO(13, 63, 103, 1)),

                      ),
                    ): completeEditing? validated?Icon(FontAwesomeIcons.checkCircle,
                      color: Color.fromRGBO(39, 174, 96, 1),):Icon(FontAwesomeIcons.timesCircle,
                      color: Colors.red,) :Icon(Icons.add,
                      color: Color.fromRGBO(240, 243, 246, 1),),
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
          ),
        );
      },
    );
  }
}

detectTybeOfTextField(tybeOfTextField,context) {
  double padding =  MediaQuery.of(context).size.height * 0.004;
  double size =  MediaQuery.of(context).size.height * 0.03;
  switch(tybeOfTextField){
    case "Email":{
    return Padding(
      padding:  EdgeInsets.fromLTRB(0,0,0,padding),
      child: Icon(Icons.email_outlined,
        size: size ,
        color: Color.fromRGBO(13, 63, 103, 1),

      ),
    );
    }
    break;
    case "Full Name":{
      return Padding(
        padding:  EdgeInsets.fromLTRB(0,0,0,padding),
        child: Icon(FontAwesomeIcons.user,
          size: size ,
          color: Color.fromRGBO(13, 63, 103, 1),),
      );
    }
    break;
    case "Phone number":{
      return Padding(
        padding:  EdgeInsets.fromLTRB(0,0,0,padding),
        child: Icon(Icons.add_ic_call_outlined,
          size: size ,
          color: Color.fromRGBO(13, 63, 103, 1),),
      );

    }
    break;
    case"Password":{
      return Padding(
        padding:  EdgeInsets.fromLTRB(0,0,0,padding),
        child: Icon(Icons.lock_outline_rounded,
          size: size ,
            color: Color.fromRGBO(13, 63, 103, 1),),
      );
    }
    break;
    case "Email or Phone number":{
      return Padding(
        padding:  EdgeInsets.fromLTRB(0,0,0,padding),
        child: Icon(Icons.email_outlined,
          size: size ,
          color: Color.fromRGBO(13, 63, 103, 1),

        ),
      );
    }
  }
}