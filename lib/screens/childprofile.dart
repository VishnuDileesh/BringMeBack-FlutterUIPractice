import 'package:flutter/material.dart';

import '../widgets/colors.dart';

class ChildProfile extends StatelessWidget{

	//final String profile_image;

	//ChildProfile({@required this.profile_image});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
				extendBodyBehindAppBar: true,
				backgroundColor: black,
				appBar: AppBar(
								leading: BackButton(
										color: white,
								),
						backgroundColor: Colors.transparent,
						elevation: 0.0,

						actions: <Widget>[
							IconButton(
									icon: Icon(Icons.search),
									onPressed: (){
										print("search icon pressed");
									},
							),
						],
				),
					body: SingleChildScrollView(
							child: Stack(
									children: <Widget>[
										Container(
												height: 300.0,
												width: double.infinity,
												decoration: BoxDecoration(
													image: DecorationImage(
															fit: BoxFit.cover,
															image: AssetImage(
																	'assets/images/kid-profile-4.jpg',
															),
															colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
													),
												),
/*												child: Image.asset(
														'assets/images/kid-profile-4.jpg',
														fit: BoxFit.cover,
												),
												*/
										),
									],
									),
					),						
					
			);
	}
}
