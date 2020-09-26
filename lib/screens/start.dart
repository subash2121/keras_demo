import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.dashboard,
                        size: 50.0,),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text('GOScan',
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 30.0

                        ),),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Magically Convert Written Numbers \n Into Digital Numbers',textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300
                  ),),
                  SizedBox(
                    height: 20.0,
                  ),
                  FlatButton(onPressed: (){
                    Navigator.pushNamed(context, '/screen');
                  }, child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 38.0),

                    child: Text('Go',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Pacifico'
                        //color: Colors.greenAccent,

                      ),),
                  ))


                ],),
            ),
            GestureDetector(

              onTap: (){
                Navigator.pushNamed(context, '/profile');
              },
              child: Expanded(child: Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Made With',
                      style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.5
                      ),),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(FontAwesomeIcons.solidHeart,
                      color: Colors.red,),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('In India',
                      style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.5
                      ),)
                  ],
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
