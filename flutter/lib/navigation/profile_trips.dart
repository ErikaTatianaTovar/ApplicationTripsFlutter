import 'package:application/profile/header_appbar_profile.dart';
import 'package:flutter/material.dart';

import '../profile/card_image_list_profile.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 270.0,
            flexibleSpace: FlexibleSpaceBar(
              background: HeaderAppBarProfile(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                padding: EdgeInsets.only(bottom: 100),
                child: CardImageListProfile(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}