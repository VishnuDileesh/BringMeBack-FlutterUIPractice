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

				],
			),
		);
	}
}
