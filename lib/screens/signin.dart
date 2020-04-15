import 'package:flutter/material.dart';

//widgets import
import '../widgets/colors.dart';
import '../widgets/bgfullscreen.dart';
import '../widgets/button.dart';

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

								Button(
									btn_text: 'Sign In',
									btn_color: pink,
								),

								Center(
									child: Text(
										'--- OR ---',
										style: TextStyle(
											
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
