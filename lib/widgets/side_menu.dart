import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  
  SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 280,
        height: double.infinity,
        //decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        //),
        child: Column(  
          
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/spotify_logo.png',
              ),
            )
          ],
        ),
      );
    }
  }