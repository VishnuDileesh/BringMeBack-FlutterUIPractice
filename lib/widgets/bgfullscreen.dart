import 'package:flutter/material.dart';

class BGFullScreen extends StatelessWidget{
	@override
	Widget build(BuildContext context){


		Size size = MediaQuery.of(context).size;

		return ColorFiltered(
					colorFilter: ColorFilter.mode(Colors.grey[900].withOpacity(0.4), BlendMode.srcOver),
					child: Center(
						child: Image.asset(
							'assets/images/bg-image.jpg',
							height: size.height,
							fit: BoxFit.cover,
						),
					),
					);


	}
}
