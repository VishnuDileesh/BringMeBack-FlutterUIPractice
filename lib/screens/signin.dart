import 'package:flutter/material.dart';

import '../widgets/bgfullscreen.dart';

class SignIn extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Material(
			child: Stack(
				children: <Widget>[
					
					BGFullScreen(),

					SafeArea(
						child: Column(
							children: <Widget>[

								Row(
									children: <Widget>[
										
										Icon(
											Icons.arrow_back,
											color: Colors.white,
										),
										
									],
								),

							],
						),
					),

				],
			),
		);
	}
}
