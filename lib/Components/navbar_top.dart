import 'package:flutter/material.dart';

class NavBarTop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Image.asset('assets/img/netflix_logo.png'),
          width: 30,
          
        ),
        Text('Series',style: TextStyle(color: Colors.white, fontSize: 17),),
        Text('Peliculas',style: TextStyle(color: Colors.white,fontSize: 17),),
        Text('Mi Lista',style: TextStyle(color: Colors.white,fontSize: 17),),
      ],
      
    );
  }



}