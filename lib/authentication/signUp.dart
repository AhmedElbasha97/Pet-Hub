import 'package:flutter/material.dart';
import 'package:pethub/Widget/CommonTextField.dart';
import 'package:pethub/Widget/commonAppBar.dart';
import 'package:pethub/Widget/roundetButton.dart';

class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}
class _ResetScreenState extends State<ResetScreen> {
  String email ;
  @override
  Widget build(BuildContext context) {
     double padding =  MediaQuery.of(context).size.height * 0.015;
    return Scaffold(
      appBar: GlobalAppbar(title: "Create Account",hasBackBTN: true,hasSkipBTN: false,),
      body: SingleChildScrollView(


        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width * 0.9,
              child: RichText(
                text: TextSpan(
                text: "Join",
                style: TextStyle(color: Color.fromRGBO(22 , 187 , 199, 1), fontSize: MediaQuery.of(context).size.height * 0.048),
                children: <TextSpan>[
                TextSpan(text: ' our Pethub community', style: TextStyle(color: Color.fromRGBO(13, 63, 103, 1))),
                ],
                ),
                ),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(240, 243, 246, 1),width: 1.0,style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color:  Color.fromRGBO(240, 243, 246, 1),
              ),
              child: Padding(
                  padding:  EdgeInsets.fromLTRB(0,padding,0,0),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child:TextFieldComp(
                        regexPattern: r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$',
                        callback: (val){
                        setState(() {
                        email = val;
                        });
                        },
                        onChange: true,
                        label: "Full Name",
                        hint: "Enter your Name",maxCharacter: 100,)
                      )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromRGBO(240, 243, 246, 1),width: 1.0,style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color:  Color.fromRGBO(240, 243, 246, 1),
                      ),
                      child: Padding(
                          padding:  EdgeInsets.fromLTRB(0,padding,0,0),
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child:TextFieldComp(
                                callback: (val){
                                  setState(() {
                                    email = val;
                                  });
                                },

                                regexPattern:r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
                                onChange: true,
                                label: "Email",
                                hint: "Example@gmail.com",maxCharacter: 100,)
                          )),
                    ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(240, 243, 246, 1),width: 1.0,style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color:  Color.fromRGBO(240, 243, 246, 1),
                          ),
                          child: Padding(
                              padding:  EdgeInsets.fromLTRB(0,padding,0,0),
                              child: Container(
                                  height: MediaQuery.of(context).size.height * 0.1,
                                  width: MediaQuery.of(context).size.width * 0.9,
                                  child:TextFieldComp(

                                    callback: (val){
                                      setState(() {
                                        email = val;
                                      });
                                    },
                                    maxCharacter:11,
                                    regexPattern: r'^(01)[0-9]{9}' ,
                                    onChange: true,
                                    keyboardTypeNumber: true,
                                    label: "Phone number",
                                    hint: "01xx xxx xxxx",)
                              )),
                        ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
                               Container(
                                 height: MediaQuery.of(context).size.height * 0.09,
                                 width: MediaQuery.of(context).size.width * 0.9,
                                 decoration: BoxDecoration(
                                   border: Border.all(color: Color.fromRGBO(240, 243, 246, 1),width: 1.0,style: BorderStyle.solid),
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                   color:  Color.fromRGBO(240, 243, 246, 1),
                                 ),
                                child: Padding(
                                    padding:  EdgeInsets.fromLTRB(0,padding,0,0),
                                    child: Container(
                                        height: MediaQuery.of(context).size.height * 0.05,
                                        width: MediaQuery.of(context).size.width * 0.9,
                                        child:TextFieldComp(
                                          textSafePassword: true,
                                          callback: (val){
                                            setState(() {
                                              email = val;
                                            });
                                          },
                                          onChange: true,
                                          regexPattern:  r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
                                          label: "Password",
                                          hint: "8-12 Character",maxCharacter: 100,)
                                    )),
                              ),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color:Color.fromRGBO(22 , 187 , 199, 1),
                    onPressed: () {
                     print('hiiiii');

                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: Text(
                    "Connect with your social account",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.016,
                      color: Color.fromRGBO(182, 197, 209, 1),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.075,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocailIcon(
                    tybe: "F",
                    press: () {},
                  ),
                  SocailIcon(
                    tybe: "G",
                    press: () {},
                  ),
                  SocailIcon(
                    tybe: "T",
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}