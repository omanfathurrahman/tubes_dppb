import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        child: const Center(
          child: Column(
            children: <Widget>[
               Padding(padding: EdgeInsets.all(20.0),),
              CircleAvatar(backgroundColor: Colors.grey,
               radius: 70.0,
               backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2018/03/06/22/57/portrait-3204843_1280.jpg'),
               ),

               Padding(padding: EdgeInsets.all(20.0),),
               TextField(decoration: InputDecoration(
                
                hintText: 'nama', 
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon( 
                  Icons.edit,
                  color: Colors.teal
                )
                 )),
                Padding(padding: EdgeInsets.all(10.0),),
               TextField(decoration: InputDecoration(
                
                hintText: 'email', 
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon( 
                  Icons.edit,
                  color: Colors.teal
                )
                 ))
                
            ],
          ),
        ),
      ),
      
    );
  }
}
