import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/utils/responsive_screen.dart';
import 'package:flutter_spotify_ui/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';

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
              color: Colors.grey[900],
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  Column(
                    //Playing Song

                  ),
                  Column(
                    //Play/Stop
                    PlayStopSong(),
                  ),
                  Column(
                    //Volume
                    
                  ),
                  Column(

                  ),
                ],

              ),
            ),
          ],
        ),
      ),
   );
  }
}