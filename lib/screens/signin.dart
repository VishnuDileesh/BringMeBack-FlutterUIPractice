import 'package:flutter/material.dart';

import '../widgets/bgfullscreen.dart';

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
				body: Stack(
				children: <Widget>[
					
					BGFullScreen(),

					SafeArea(
						child: Container(
							padding: EdgeInsets.symmetric(horizontal: 16.0),
							child: Column(
							children: <Widget>[

								TextField(
									style: TextStyle(
										color: Color(0xff888888),
									),
									keyboardType: TextInputType.emailAddress,
									decoration: InputDecoration(
										hintText: "Email",
										hintStyle: TextStyle(
											color: Color(0xff888888),
										),
										
										enabledBorder: OutlineInputBorder(
											borderSide: BorderSide(
												color: Color(0xff888888),
											),
										),

										focusedBorder: OutlineInputBorder(
											borderSide: BorderSide(
												color: Color(0xff888888),
											),
										),

										focusedErrorBorder: OutlineInputBorder(
											borderSide: BorderSide(
												color: Color(0xff888888),
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
									obscureText: true,
									decoration: InputDecoration(
										hintText: "Password",
										hintStyle: TextStyle(
											color: Color(0xff888888),
										),
										
										enabledBorder: OutlineInputBorder(
											borderSide: BorderSide(
												color: Color(0xff888888),
											),
										),

										focusedBorder: OutlineInputBorder(
											borderSide: BorderSide(
												color: Color(0xff888888),
											),
										),

										focusedErrorBorder: OutlineInputBorder(
											borderSide: BorderSide(
												color: Color(0xff888888),
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
											color: Color(0xff888888),
										),
									),
									),
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
