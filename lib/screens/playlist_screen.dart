import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/widgets/navigation_controls.dart';

class PlaylistScreen extends StatefulWidget {
  PlaylistScreen({Key? key}) : super(key: key);

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildPlaylistScreenBody(),
        extendBodyBehindAppBar: true,
        //body: ,
      )
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 140,
        leading: NavigationControls(),
        actions: [
          TextButton.icon(
            onPressed: () {}, 
            icon: Icon( 
              Icons.account_circle_outlined, 
              size: 25, 
            ), 
            label: Text( 
              'Log in', 
              style: Theme.of(context).textTheme.bodyText1!.copyWith( 
                fontWeight: FontWeight.bold, 
                letterSpacing: 0.8, 
              )
            ),
            style: TextButton.styleFrom( primary: Theme.of(context).iconTheme.color ),
          ),
          SizedBox( width: 12 ),
          IconButton(
            icon: Icon( Icons.keyboard_arrow_down ),
            iconSize: 25,
            onPressed: () {},
            padding: EdgeInsets.only(),
          ),
          SizedBox( width: 26 ),
        ],
      );
  }

  Widget _buildPlaylistScreenBody() {
    return _PlaylistContainer();
  }

}

class _PlaylistContainer extends StatelessWidget {
  const _PlaylistContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red.shade700,
            Colors.black87,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0, 0.35
          ]
        ),
      ),
      child: Scrollbar(
        child: Row(

        ),
      ),
    );
  }
}