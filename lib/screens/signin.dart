import 'package:flutter/material.dart';

//widgets import
import '../widgets/colors.dart';
import '../widgets/bgfullscreen.dart';
import '../widgets/button.dart';

//screens import
import 'signup.dart';

class SignIn extends StatelessWidget{
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
						'Sign In',
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

							    	SizedBox(height: 8.0),

							    	Align(
							    		alignment: Alignment.topRight,
							    		child: InkWell(
							    			onTap: (){},
							    			child:Text(
							    			'Forgot Password',
							    			style: TextStyle(
							    				color: grey,
							    			),
							    		),
							    		),
							    	),

							    	SizedBox(height: 40.0,),

							    	ButtonFull(
							    		btn_text: 'Sign In',
							    		btn_color: pink,
							    	),

							    	SizedBox(height: 32.0),

							    	Row(
							    		mainAxisAlignment: MainAxisAlignment.center,
							    		children: <Widget>[

							    			Container(
							    				margin: EdgeInsets.only(left: 10.0, right: 10.0),
							    				color: grey,
							    				height: 1,
							    				width: 30.0,
							    			),

							    			Text(
							    				'OR',
							    				style: TextStyle(
							    					color: grey,
							    					fontSize: 16.0,
							    				),
							    			),


							    			Container(
							    				margin: EdgeInsets.only(left: 10.0, right: 10.0),
							    				color: grey,
							    				height: 1,
							    				width: 30.0,
							    			),

							    		],
							    	),

							    	SizedBox(height: 32.0),

							    	
							    	Row(
							    		children: <Widget>[
							    			Expanded(
							    			child: Button(
							    				btn_text: 'Facebook',
							    				btn_color: Color(0xff3B5998),
							    			),
							    			),

							    			SizedBox(width: 10.0),


							    			Expanded(
							    			child: Button(
							    				btn_text: 'Google+',
							    				btn_color: Color(0xffDB4A39),
							    			),
							    			),
							    		],
							    	),



							   



							    ],
						),

								Column(

										mainAxisAlignment: MainAxisAlignment.end,
										children: <Widget>[
							    	Row(
							    		mainAxisAlignment: MainAxisAlignment.center,
							    		children: <Widget>[
							    		
							    			Text(
							    				"Don't have an account?",
							    				style: TextStyle(
							    					color: grey,
							    					fontSize: 16.0,
							    				),
							    			),

							    			SizedBox(width: 3.0),

							    			InkWell(
							    				onTap: (){
							    					Navigator.push(
							    						context,
							    						MaterialPageRoute(builder: (context) => SignUp()),
							    					);
							    				},
							    				child: Text(
							    					'Sign up',
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
