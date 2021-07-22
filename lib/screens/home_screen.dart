import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/utils/responsive_screen.dart';
import 'package:flutter_spotify_ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    ResponsiveScreen screenSize = ResponsiveScreen( context );

    return Scaffold(
      body: Center(
        child: Column(
          children: [

            //PlaylistScreen
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    //SideMenu
                    SideMenu(),
                    //PlaylistScreen
                  ],
                ),
              ),
            ),

            //CurrentSongScreen
            Container(
              color: Colors.green,
              width: double.infinity,
              height: 115,
              child: Row(

              ),
            ),
          ],
        ),
      ),
   );
  }
}