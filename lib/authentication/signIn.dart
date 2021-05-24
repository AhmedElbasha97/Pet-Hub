import 'package:flutter/material.dart';
import 'package:pethub/Widget/CommonTextField.dart';
import 'package:pethub/Widget/commonAppBar.dart';
import 'package:pethub/Widget/roundetButton.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  String email ;
  @override
  Widget build(BuildContext context) {
    double padding =  MediaQuery.of(context).size.height * 0.015;
    return Scaffold(
      appBar: GlobalAppbar(title: "Sign In",hasBackBTN: true,hasSkipBTN: false,),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Align(
              alignment: Alignment(-0.8, 0.85),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.11,
                width: MediaQuery.of(context).size.width * 0.43,
                child: RichText(
                  text: TextSpan(
                    text: "Welcome",
                    style: TextStyle(color: Color.fromRGBO(22 , 187 , 199, 1), fontSize: MediaQuery.of(context).size.height * 0.051),
                    children: <TextSpan>[
                      TextSpan(text: 'back!', style: TextStyle(color: Color.fromRGBO(13, 63, 103, 1))),
                    ],
                  ),
                ),),
            ),
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
                        callback: (val){
                          setState(() {
                            email = val;
                          });
                        },
                        onChange: true,
                        label: "Email or Phone number",
                        regexPattern: r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
                        secondRegexPattern: r'^(01)[0-9]{9}',
                        doubleValidation: true,
                        hint: "Example@gmail.com or 01xx xxxx xxx",maxCharacter: 100,)
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
                        label: "Password",
                        regexPattern:  r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
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
                      "Sign In",
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
            Align(
              alignment: Alignment(0, 0.85),
              child: GestureDetector(
                onTap: (){
                  print("hiiiii");
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.016,
                        fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(13, 63, 103, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Align(
              alignment: Alignment(0.1, 0.85),
              child: SizedBox(
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