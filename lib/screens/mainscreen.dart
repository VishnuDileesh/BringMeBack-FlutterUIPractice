import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../widgets/colors.dart';
import '../widgets/profile_card.dart';


class MainScreen extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Scaffold(
				appBar: AppBar(
						title: Text('Home'),
						centerTitle: true,
						backgroundColor: black,
						actions: <Widget>[
							IconButton(
									icon: Icon(Icons.search),
									onPressed: (){
										print("search icon pressed");
									},
							),
						],
				),
				backgroundColor: black,
				drawer: Drawer(
					
				),
				body: SafeArea(
						child: Column(
								children: <Widget>[
									SizedBox(
										height: 200.0,

									  child: Carousel(
									  		images: [
									  			AssetImage('assets/images/slideshow-1.jpg'),
									  			AssetImage('assets/images/slideshow-2.jpg'),
									  			AssetImage('assets/images/slideshow-3.jpg'),
									  		],
									  		boxFit: BoxFit.cover,
									  		autoplay: false,
												showIndicator: true,
												dotSize: 8.0,
												dotIncreaseSize: 1.0,
												dotSpacing: 16.0,
												dotBgColor: Colors.transparent,
												borderRadius: true,
												overlayShadow: true,
												overlayShadowColors: black,
									  ),
									),

									SizedBox(height: 24.0),

									Expanded(
									  child: GridView.count(
									  		primary: false,
												padding: EdgeInsets.symmetric(horizontal: 24.0),
									  		crossAxisCount: 2,
									  		crossAxisSpacing: 20.0,
									  		mainAxisSpacing: 16.0,
									  		children: <Widget>[

													ProfileCard(
														profile_image: 'assets/images/kid-profile-2.jpg',
														profile_name: 'Rahul',
														profile_age: '5',
													),


									  		],
									  ),
									),
								],
						),
				),
		);
	}

}
