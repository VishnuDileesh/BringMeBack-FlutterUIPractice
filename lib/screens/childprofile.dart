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
												height: 270.0,
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

										),

										Container(
											margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 240.0),
										  child: Column(
										  		children: <Widget>[

														//profile card
										  			Container(
																decoration: BoxDecoration(
																	borderRadius: BorderRadius.circular(6.0),
																	color: lightblack,
																),	
										  					height: 460.0,
																child: Column(
																		children: <Widget>[
																			//card top
																			Center(
																			  child: Container(
																						margin: EdgeInsets.only(left: 60.0, right: 32.0),
																			  		height: 280.0,
																			  		color: lightblack,
																			  		child: Column(
																			  				crossAxisAlignment: CrossAxisAlignment.center,
																			  				mainAxisAlignment: MainAxisAlignment.center,
																			  				children: <Widget>[
																			  					
																			  					
																			  					Row(
																			  							mainAxisAlignment: MainAxisAlignment.start,
																			  							children: <Widget>[

	
																			  								Container(
																			  										padding: EdgeInsets.all(8.0),
																			  										decoration: BoxDecoration(
																			  												shape: BoxShape.circle,
																			  												color: pink,
																			  										),
																			  								  child: Icon(
																			  								  		Icons.person,
																			  								  		color: white,
																			  								  ),
																			  								),

																			  								SizedBox(width: 16.0),


																			  								Text(
																			  										'Name:',
																			  										style: TextStyle(
																			  												color: white,
																			  												fontSize: 16.0,
																			  										),
																			  								),

																			  								SizedBox(width: 8.0),

																			  								Text(
																			  										'Vijay Kumar',
																			  										style: TextStyle(
																			  												color: white,
																			  												fontSize: 16.0,
																			  										),
																			  								),

																			  							],
																			  					),



																			  					SizedBox(height: 16.0),

																			  					
																			  					Row(
																			  							mainAxisAlignment: MainAxisAlignment.start,
																			  							children: <Widget>[

	
																			  								Container(
																			  										padding: EdgeInsets.all(8.0),
																			  										decoration: BoxDecoration(
																			  												shape: BoxShape.circle,
																			  												color: pink,
																			  										),
																			  								  child: Icon(
																			  								  		Icons.cake,
																			  								  		color: white,
																			  								  ),
																			  								),

																			  								SizedBox(width: 16.0),


																			  								Text(
																			  										'Age:',
																			  										style: TextStyle(
																			  												color: white,
																			  												fontSize: 16.0,
																			  										),
																			  								),

																			  								SizedBox(width: 8.0),

																			  								Text(
																			  										'5 yrs',
																			  										style: TextStyle(
																			  												color: white,
																			  												fontSize: 16.0,
																			  										),
																			  								),

																			  							],
																			  					),




																			  					SizedBox(height: 16.0),

																			  					
																			  					Row(
																			  							mainAxisAlignment: MainAxisAlignment.start,
																			  							children: <Widget>[

	
																			  								Container(
																			  										padding: EdgeInsets.all(8.0),
																			  										decoration: BoxDecoration(
																			  												shape: BoxShape.circle,
																			  												color: pink,
																			  										),
																			  								  child: Icon(
																			  								  		Icons.cake,
																			  								  		color: white,
																			  								  ),
																			  								),

																			  								SizedBox(width: 16.0),


																			  								Text(
																			  										'Gender:',
																			  										style: TextStyle(
																			  												color: white,
																			  												fontSize: 16.0,
																			  										),
																			  								),

																			  								SizedBox(width: 8.0),

																			  								Text(
																			  										'Male',
																			  										style: TextStyle(
																			  												color: white,
																			  												fontSize: 16.0,
																			  										),
																			  								),

																			  							],
																			  					),



																			  					SizedBox(height: 16.0),

																			  					
																			  					Row(
																			  							mainAxisAlignment: MainAxisAlignment.start,
																			  							children: <Widget>[

	
																			  								Container(
																			  										padding: EdgeInsets.all(8.0),
																			  										decoration: BoxDecoration(
																			  												shape: BoxShape.circle,
																			  												color: pink,
																			  										),
																			  								  child: Icon(
																			  								  		Icons.location_on,
																			  								  		color: white,
																			  								  ),
																			  								),

																			  								SizedBox(width: 16.0),


																			  								Text(
																			  										'Location:',
																			  										style: TextStyle(
																			  												color: white,
																			  												fontSize: 16.0,
																			  										),
																			  								),

																			  								SizedBox(width: 8.0),

																			  								Text(
																			  										'5 yrs',
																			  										style: TextStyle(
																			  												color: white,
																			  												fontSize: 16.0,
																			  										),
																			  								),

																			  							],
																			  					),



																			  				],
																			  		),
																			  ),
																			),

																			//card bottom
																			Container(
																					decoration: BoxDecoration(
																							image: DecorationImage(
																									image: AssetImage('assets/images/map.png'),
																									fit: BoxFit.cover,			
																					),
																						),
																					height: 180.0,
																			),
																		],
																),
																),

																SizedBox(height: 20.0),


																Container(
																		padding: EdgeInsets.symmetric(vertical: 16.0),
																		decoration: BoxDecoration(
																				color: pink,
																				borderRadius: BorderRadius.circular(5.0),
																		),
																		child: Row(
																				mainAxisAlignment: MainAxisAlignment.center,
																				children: <Widget>[
																					Icon(Icons.call,
																							color: white,),

																					SizedBox(width: 3.0),

																					Text(
																							'Call Agent',
																							style: TextStyle(
																									color: white,
																									fontSize: 18.0,
																							),
																					),
																				],
																		),
																),

																SizedBox(height: 16.0),


																Container(
																		padding: EdgeInsets.symmetric(vertical: 16.0),
																		decoration: BoxDecoration(
																				color: pink,
																				borderRadius: BorderRadius.circular(5.0),
																		),
																		child: Row(
																				mainAxisAlignment: MainAxisAlignment.center,
																				children: <Widget>[
																					Icon(Icons.chat,
																							color: white,),

																					SizedBox(width: 3.0),

																					Text(
																							'Chat Agent',
																							style: TextStyle(
																									color: white,
																									fontSize: 18.0,
																							),
																					),
																				],
																		),
																),


																SizedBox(height: 16.0),

										  		],
										  ),
										),

									],
									),
					),						
					
			);
	}
}
