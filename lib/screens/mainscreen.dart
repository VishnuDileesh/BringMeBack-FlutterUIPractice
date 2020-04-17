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

									SizedBox(height: 24.0),

									Expanded(
									  child: GridView.count(
									  		primary: false,
									  		crossAxisCount: 2,
									  		crossAxisSpacing: 16,
									  		mainAxisSpacing: 10,
									  		children: <Widget>[
									  			Container(
									  					decoration: BoxDecoration(
																	border: Border.all(
																			color: grey,
																	),
																	borderRadius: BorderRadius.circular(5.0),
									  							image: DecorationImage(
									  									image: AssetImage(
									  											'assets/images/kid-profile-2.jpg',
									  											),
									  									fit: BoxFit.cover,
									  							),
									  					),
									  					child: Row(
																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																	crossAxisAlignment: CrossAxisAlignment.end,
									  							children: <Widget>[
									  								Padding(
									  								  padding: const EdgeInsets.all(8.0),
									  								  child: Text(
																				'Vijay',
																				style: TextStyle(
																						color: white,
																				),
																				),
									  								),
									  								Padding(
									  								  padding: const EdgeInsets.all(8.0),
									  								  child: Text(
																				'Age: 5',
																				style: TextStyle(
																						color: white,
																				),
																				),
									  								),
									  							],
									  					), 
									  			),

									  			Container(
									  					decoration: BoxDecoration(
									  							image: DecorationImage(
									  									image: AssetImage(
									  											'assets/images/kid-profile-1.jpg',
									  											),
									  									fit: BoxFit.cover,
									  							),
									  					),
									  					child: Row(
									  							children: <Widget>[
									  								Text('Vijay'),
									  								Text('Age: 5'),
									  							],
									  					), 
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
