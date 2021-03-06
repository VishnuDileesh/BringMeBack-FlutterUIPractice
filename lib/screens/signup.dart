import 'package:flutter/material.dart';

//widgets import
import '../widgets/colors.dart';
import '../widgets/bgfullscreen.dart';
import '../widgets/button.dart';

//screens import
import 'signin.dart';
import 'mainscreen.dart';

class SignUp extends StatefulWidget{
	@override
	_SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

	String _value;
	List<String> options = <String>['Volunteer', 'Donor'];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Sign Up',
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
				resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            BGFullScreen(),
            Center(
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  border: Border.all(
                                    color: grey,
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(

                                      items: [
                                        DropdownMenuItem<String>(
                                          value: 'one',
                                          child: Center(
                                              child: Text('Volunteer',
                                                  style: TextStyle(
																										inherit: false,
                                                    color: grey,
																										decorationColor: Colors.red,
                                                  ))),
                                        ),
																		DropdownMenuItem<String>(
                                          value: 'two',
																					
                                          child: Center(
                                              child: Text('Donor',
                                                  style: TextStyle(
                                                    color: grey,
                                                  ))),
                                        ),

                                      ],
                                      hint: Text('Select Role',
                                          style: TextStyle(
                                            color: grey,
                                          )),
																			value: _value,
                                      onChanged: (String value) {
                                        print(_value);
																				setState((){
																					_value = value;
																				});
                                      }),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          style: TextStyle(
                            color: Color(0xff888888),
                          ),
                          decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(
                              color: grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          style: TextStyle(
                            color: Color(0xff888888),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          style: TextStyle(
                            color: grey,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        ButtonFull(
                          btn_text: 'Sign Up',
                          btn_color: pink,
													btn_tap: (){
														Navigator.pushAndRemoveUntil(
																context,
																MaterialPageRoute(builder: (context) => MainScreen()),
																(Route<dynamic> route) => false,
														);
													},
                        ),
                        SizedBox(height: 140.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: grey,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(width: 3.0),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignIn()),
                                );
                              },
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                  color: pink,
                                  fontSize: 16.0,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
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
