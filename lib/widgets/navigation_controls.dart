import 'package:flutter/material.dart';

class NavigationControls extends StatelessWidget {
  const NavigationControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 16, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _NavigationControl( iconData: Icons.chevron_left ),
          const SizedBox( width: 10 ),
          _NavigationControl( iconData: Icons.chevron_right ),
        ],
      ),
    );
  }
}

class _NavigationControl extends StatelessWidget {
  final IconData iconData;

  const _NavigationControl({
    Key? key,
    required IconData this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        customBorder: CircleBorder(),
        child: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.all( Radius.circular(20) ),
          ),
          child: Icon( iconData )
        ),
        onTap: () {},
      ),
    );
  }
}