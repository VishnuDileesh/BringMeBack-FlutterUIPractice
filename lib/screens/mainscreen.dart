import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../widgets/colors.dart';


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
										height: 250.0,

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
								],
						),
				),
		);
	}
}
