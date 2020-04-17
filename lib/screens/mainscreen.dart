import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../widgets/colors.dart';
import '../widgets/profile_card.dart';

import 'addchild.dart';


class MainScreen extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Scaffold(
				extendBodyBehindAppBar: true,
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
				floatingActionButton: FloatingActionButton(
						child: Icon(Icons.add),
						backgroundColor: pink,
						onPressed: (){
							Navigator.push(
									context,
									MaterialPageRoute(builder: (context) => AddChild()),
							);
						},
				),
				backgroundColor: black,
				drawer: Drawer(
						child: Column(
								children: <Widget>[

								Expanded(
										flex: 3,
										child: Stack(
										  children: <Widget>[
												Container(
													decoration: BoxDecoration(
														color: lightblack,
													),
												),

										    Container(
										    		padding: EdgeInsets.all(16.0),
										    		decoration: BoxDecoration(
										    				color: pink,
										    				borderRadius: BorderRadius.only(
										    						bottomLeft: Radius.circular(10.0),
										    						bottomRight: Radius.circular(10.0),
										    				),
										    		),
										    		child: Column(
										    				mainAxisAlignment: MainAxisAlignment.center,
										    				children: <Widget>[
										    					Align(
										    							alignment: Alignment.topRight,
										    							child: Icon(
										    									Icons.menu,
										    									color: white,
										    							),
										    					),

										    					Row(
										    							mainAxisAlignment: MainAxisAlignment.spaceAround,
										    							children: <Widget>[
										    								CircleAvatar(
										    										radius: 50.0,
										    										backgroundColor: white,
										    										child: CircleAvatar(
										    												radius: 47.0,
										    												backgroundImage: AssetImage(
										    														'assets/images/profile.jpg',
										    												),
										    										),
										    								),

										    								Column(
										    										mainAxisAlignment: MainAxisAlignment.center,
										    										crossAxisAlignment: CrossAxisAlignment.start,
										    										children: <Widget>[

										    								Text(
										    										'Jessica Martin',
										    										style: TextStyle(
										    												color: white,
										    												fontWeight: FontWeight.bold,
										    												fontSize: 16.0,
										    										),
										    								),


										    								Text(
										    										'Social Entrepreneur',
										    										style: TextStyle(
										    												color: white,
										    												fontSize: 16.0,
										    										),
										    								),

										    										],
										    								),
	

										    							],
										    					),
										    				],
										    		),
										    ),
										  ],
										),
								),

								
								Expanded(
										flex: 7,
										child: Container(
												decoration: BoxDecoration(
														color: lightblack,
												),
										),
								),


									/*
									UserAccountsDrawerHeader(
											decoration: BoxDecoration(
													color: pink,
											),
											accountName: Text('Jessica Martin'),
											accountEmail: Text('Social Entrepreneur'),
											currentAccountPicture: CircleAvatar(
												radius: 50.0,
												backgroundColor: white,
											  child: CircleAvatar(
														radius: 33.0,
											  		backgroundImage: AssetImage('assets/images/profile.jpg'),
											  ),
											),
									),
									*/
								],
						),
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
												childAspectRatio: 1.1,
									  		children: <Widget>[

													ProfileCard(
														profile_image: 'assets/images/kid-profile-2.jpg',
														profile_name: 'Vijay',
														profile_age: '3',
													),

													ProfileCard(
															profile_image: 'assets/images/kid-profile-1.jpg',
															profile_name: 'Chetan',
															profile_age: '7',
													),

													ProfileCard(
															profile_image: 'assets/images/kid-profile-3.jpg',
															profile_name: 'Priya',
															profile_age: '5',
													),

													ProfileCard(
															profile_image: 'assets/images/kid-profile-4.jpg',
															profile_name: 'Amit',
															profile_age: '6',
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
