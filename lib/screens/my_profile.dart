import 'package:flutter/material.dart';
class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/subash.jpg'),

                ),
                Text(
                  'Subash A',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,

                  ),

                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                      color: Colors.teal[50],
                      fontSize: 15.0,
                      fontFamily: 'SourceSansPro',
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                    height:20.0,
                    child: Divider(
                      color: Colors.blue,
                    )
                ),
                Card(
                  color:Colors.white,
                  margin:EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),

                  child: ListTile(
                      leading:Icon(

                        Icons.phone,
                        color:Colors.green,
                      ),
                      title: Text('+91 7010566424',
                        style: TextStyle(
                          color:Colors.greenAccent,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,

                        ),)

                  ),
                ),
                Card(
                  color:Colors.white,
                  margin:EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),

                  child:ListTile(
                      leading:Icon(

                        Icons.email,
                        color:Colors.green,
                      ),
                      title: Text('subasha@student.tce.edu',
                        style: TextStyle(
                          color:Colors.greenAccent,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,

                        ),)

                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Container(

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    boxShadow: [BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0,2.0)
                    )],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                  child: Text('<- Go Back',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),),

                ))
              ],
            )

        ),
      ),
    );
  }
}
