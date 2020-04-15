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

						],
					),

				],
			),
		);
	}
}










