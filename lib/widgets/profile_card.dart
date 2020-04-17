import 'package:flutter/material.dart';

import 'colors.dart';

class ProfileCard extends StatelessWidget{

	final String profile_image;
	final String profile_name;
	final String profile_age;

	ProfileCard({@required this.profile_image, @required this.profile_name, @required this.profile_age});

	@override
	Widget build(BuildContext context) {
		return Container(
									  					decoration: BoxDecoration(
																	border: Border.all(
																			color: grey,
																	),
																	borderRadius: BorderRadius.circular(5.0),
									  							image: DecorationImage(
									  									image: AssetImage(
									  												profile_image,
									  											),
									  									fit: BoxFit.cover,
									  							),
									  					),
									  					child: Container(
																color: Colors.black26,
									  					  child: Row(
																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																	crossAxisAlignment: CrossAxisAlignment.end,
									  					  		children: <Widget>[
									  					  			Padding(
									  					  			  padding: const EdgeInsets.all(8.0),
									  					  			  child: Text(
																				profile_name,
																				style: TextStyle(
																						color: white,
																				),
																				),
									  					  			),
									  					  			Padding(
									  					  			  padding: const EdgeInsets.all(8.0),
									  					  			  child: Text(
																				profile_age,
																				style: TextStyle(
																						color: white,
																				),
																				),
									  					  			),
									  					  		],
									  					  ),
									  					), 
									  			);

	}
}
