import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:application/User/model/user_data.dart';
import 'package:application/User/ui/widgets/button_bar.dart';
import 'package:application/User/ui/widgets/user_info.dart';

class ProfileHeader extends StatelessWidget {
  final UserData userData;

  ProfileHeader({Key? key, required this.userData});

  @override
  Widget build(BuildContext context) {

    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0),
    );

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[title],
          ),
          UserInfo(userData),
          ButtonsBar()
        ],
      ),
    );
  }
}