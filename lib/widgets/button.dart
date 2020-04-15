import 'package:flutter/material.dart';

class ButtonFull extends StatelessWidget{
	

	final String btn_text;
	final Color btn_color;

	ButtonFull({this.btn_text, this.btn_color});

	@override
	Widget build(BuildContext context){

		Size size = MediaQuery.of(context).size;


		return Container(
									width: size.width,
									padding: EdgeInsets.symmetric(vertical: 16.0),
									decoration: BoxDecoration(
										color: btn_color,
										borderRadius: BorderRadius.circular(5.0),
									),
									child: Center(
										child: Text(
										btn_text,
										style: TextStyle(
											color: Colors.white,
											fontSize: 18.0,
										),
									),
									),
								);		
	}

}






class Button extends StatelessWidget{
	

	final String btn_text;
	final Color btn_color;

	Button({this.btn_text, this.btn_color});

	@override
	Widget build(BuildContext context){



		return Container(
									padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
									decoration: BoxDecoration(
										color: btn_color,
										borderRadius: BorderRadius.circular(5.0),
									),
									child: Center(
										child: Text(
										btn_text,
										style: TextStyle(
											color: Colors.white,
											fontSize: 18.0,
										),
									),
									),
								);		
	}

}

