import 'package:flutter/material.dart';
import 'package:juice/shared_widget/custom_appbar.dart';

import 'cart_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class MainContainer extends StatefulWidget {
  @override
  _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ourCustomAppBar(context ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.purple,
          currentIndex: selected,
          onTap: (index) {
            setState(() {
              selected = index;
            });
            
          },
          //unselectedItemColor: Colors.grey,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
          ],
        ),
        body:SelectedTap(),
    );
  }

 

  Widget SelectedTap(){
 if(selected == 0){
   return HomeScreen();
 }else if(selected == 1){
return CartScreen();
 }else{
   return ProfileScreen();
 }

  }
}
