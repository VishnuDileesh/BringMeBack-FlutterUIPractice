import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
	@override
	Widget build(BuildContext context){


		Size size = MediaQuery.of(context).size;

		return Material(
			child: Stack(
				children: <Widget>[

					Center(
						child: Image.asset(
							'assets/images/bg-image.jpg',
							width: size.width,
							height: size.height,
							fit: BoxFit.fill,
						),
					),

					Column(
						mainAxisAlignment: MainAxisAlignment.end,
						crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							
							Center(
							
							child: RichText(
								text: TextSpan(
									text: 'BRING ',
									style: TextStyle(
										color: Colors.white,
										fontSize: 36.0,
										fontWeight: FontWeight.bold, 
									),
									children: <TextSpan>[
										TextSpan(
											text: 'ME ',
											style: TextStyle(
												color: Color(0xffFE2472),
											),
										),

										TextSpan(
											text: 'BACK',
											style: TextStyle(
												color: Colors.white,
											),
										),


									],
								),
							),
							),


							Center(
								child: Text(
									'Hope you find me someday',
									style: TextStyle(
										color: Colors.white,
										fontSize: 16.0,
									),
								),
							),

							SizedBox(height: 30.0),
							GestureDetector(
							onTap: (){
								print("Button Pressed");
							},
							child: Center(
								child: Container(
									margin: EdgeInsets.symmetric(horizontal: 50.0),
									width: size.width,
									padding: EdgeInsets.symmetric(vertical: 16.0),
									decoration: BoxDecoration(
										color: Color(0xffFE2472),
										borderRadius: BorderRadius.circular(5.0),
									),
									child: Center(
										child: Text(
										'GET STARTED',
										style: TextStyle(
											color: Colors.white,
											fontSize: 18.0,
										),
									),
									),
								),		
							),
							),

							SizedBox(height: 50.0),

						],
					),

				],
			),
		);
	}
}










