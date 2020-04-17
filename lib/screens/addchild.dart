import 'package:flutter/material.dart';

//widgets import
import '../widgets/colors.dart';
import '../widgets/bgfullscreen.dart';
import '../widgets/button.dart';

//screens import
import 'mainscreen.dart';


class AddChild extends StatefulWidget{
	@override
	_AddChildState createState() => _AddChildState();
}

class _AddChildState extends State<AddChild>{


	String _value;
	List<String> options = <String>['Male', 'Female'];


	@override
	Widget build(BuildContext context){
		return Material(
			child: Scaffold(
				extendBodyBehindAppBar: true,
				backgroundColor: Colors.transparent,
				appBar: AppBar(
					leading: IconButton(
						icon: Icon(
							Icons.arrow_back,
						),
						onPressed: (){
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

					SafeArea(
						child: Container(
							padding: EdgeInsets.symmetric(horizontal: 16.0),
							child: Column(
								mainAxisAlignment: MainAxisAlignment.spaceAround,
							  children: <Widget>[
							    Column(
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
							    			color: grey,
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

							    	TextField(
							    		style: TextStyle(
							    			color: grey,
							    		),
							    		decoration: InputDecoration(
							    			hintText: "Location",
							    			hintStyle: TextStyle(
							    				color: grey,
							    			),

												suffixIcon: Icon(
														Icons.location_searching,
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



							    	SizedBox(height: 40.0,),

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


					

							  ],
							),
					),
					),

				],
			),
				),
				);
	}
}



