import 'package:flutter/material.dart';
import 'package:netflix_clone/Components/navbar_top.dart';

class MainHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.header(),
        this.informationSerie(),
        this.buttons(),
      ],
    );

  }

  Widget header(){
    return Stack(
          children: <Widget>[
            Container(
              
              child: Image.network(
                'https://www.pandaancha.mx/plds/articulos/d56ce26acd0b51655874f6088d258001837767828.jpg',
                height: 350.0,
                fit: BoxFit.cover,
                ),
            ),
            Container(
              width: double.infinity,
              height: 350.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black12,
                    Colors.black
                  ]
                   )
              ),
            ),
            SafeArea(
              child: NavBarTop(),

            )
          ],
        );
  }
  Widget informationSerie(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Text('Telenovelesco',style: TextStyle(color: Colors.white, fontSize: 10.0),),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record,color: Colors.red,size: 5, ),
        SizedBox(width: 6.0,),
        Text('Suspenso insostenible',style: TextStyle(color: Colors.white, fontSize: 10.0),),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record,color: Colors.red,size: 5,),
        SizedBox(width: 6.0,),
        Text('De suspenso',style: TextStyle(color: Colors.white, fontSize: 10.0),),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record,color: Colors.red,size: 5,),
        SizedBox(width: 6.0,),
        Text('Adolecentes',style: TextStyle(color: Colors.white, fontSize: 10.0),),
      ],
    
    );
  }
  Widget buttons(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:<Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.check,size: 30,color: Colors.grey,),
              Text('Mi Lista',style: TextStyle(fontSize: 12,color: Colors.grey),)
              
            ],
          ),
         
          TextButton(
            onPressed: (){},
            
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 12)
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),
                Text('Reproducir')
              ],
            )
          
          ),
         
          Column(
            children: <Widget>[
              Icon(Icons.info_outline,size: 30,color: Colors.grey,),
              Text('Información',style: TextStyle( fontSize: 12,color: Colors.grey),)
              
            ],
          ),
        ]
      ),
    );
  }
}