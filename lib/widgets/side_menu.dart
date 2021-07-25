import 'package:flutter/material.dart';

import 'package:flutter_spotify_ui/widgets/app_logo.dart';
import 'package:flutter_spotify_ui/data/data.dart';

class SideMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 280,
        height: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            AppLogo(),
            _SideMenuItem( title: 'Home', iconData: Icons.home, ),
            _SideMenuItem( title: 'Search', iconData: Icons.search, ),
            _SideMenuItem( title: 'Radio', iconData: Icons.music_note, ),
            const SizedBox( height: 24, ),
            _LibraryPlaylists(),
          ],
        ),
      );
    }
  }

class _SideMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;

  const _SideMenuItem({
    Key? key,
    required String this.title,
    required IconData this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon( iconData, size: 20 ),
      title: Text(title, style: Theme.of(context).textTheme.headline4!.copyWith( fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 0.8 )),
      onTap: () {},
    );
  }
  
}

class _LibraryPlaylists extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LibraryPlaylistsState();
}

class _LibraryPlaylistsState extends State<_LibraryPlaylists> {
  ScrollController? _scrollController;

  @override
  void initState() { 
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() { 
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        isAlwaysShown: true,
        interactive: true,
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          children: [
            _SectionHeader( header: 'YOUR LIBRARY', ),
            ...yourLibrary.map((playlist) => ListTile(
              title: Text( playlist, style: Theme.of(context).textTheme.bodyText2),
            )).toList(),
            SizedBox( height: 24 ),
            _SectionHeader( header: 'PLAYLISTS', ),
            ...playlists.map((playlist) => ListTile(
              title: Text( playlist, style: Theme.of(context).textTheme.bodyText2),
            )).toList(),
          ],
        ),
      )
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String header;

  const _SectionHeader({
    Key? key,
    required String this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 16, vertical: 10, ),
      child: Text( 
        header, 
        style: Theme.of(context).textTheme.headline4!.copyWith( fontWeight: FontWeight.bold ),
        overflow: TextOverflow.fade,
      ),
    );
  }
}

