import 'package:flutter/material.dart';

//widgets import
import '../widgets/colors.dart';
import '../widgets/bgfullscreen.dart';
import '../widgets/button.dart';

//screens import
import 'signin.dart';
import 'mainscreen.dart';

class AddChild extends StatefulWidget{
	@override
	_AddChildState createState() => _AddChildState();
}

class _AddChildState extends State<AddChild> {

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
            'Add Child',
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

                        TextField(
                          style: TextStyle(
                            color: Color(0xff888888),
                          ),
                          decoration: InputDecoration(
                            hintText: "Child Name",
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
                          decoration: InputDecoration(
                            hintText: "Age",
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
                                              child: Text('Male',
                                                  style: TextStyle(
																										inherit: false,
                                                    color: grey,
																										decorationColor: Colors.red,
                                                  ))),
                                        ),
																		DropdownMenuItem<String>(
                                          value: 'two',
																					
                                          child: Center(
                                              child: Text('Female',
                                                  style: TextStyle(
                                                    color: grey,
                                                  ))),
                                        ),

                                      ],
                                      hint: Text('Gender',
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
                            color: grey,
                          ),
                          decoration: InputDecoration(
														suffixIcon: Icon(
																Icons.location_searching,
																color: grey,),
                            hintText: "Location",
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
                          btn_text: 'SIGN UP',
                          btn_color: pink,
													btn_tap: (){
														Navigator.pushAndRemoveUntil(
																context,
																MaterialPageRoute(builder: (context) => MainScreen()),
																(Route<dynamic> route) => false,
														);
													},
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
