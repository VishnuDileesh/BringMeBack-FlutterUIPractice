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
