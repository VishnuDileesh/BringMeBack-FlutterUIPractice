import 'package:flutter/material.dart';

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
				drawer: Drawer(
					
				),
		);
	}
}
