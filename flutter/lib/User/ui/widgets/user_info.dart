import 'package:flutter/material.dart';
import 'package:application/User/model/user_data.dart';

class UserInfo extends StatelessWidget {

  UserData userData;

  UserInfo(@required this.userData);

  @override
  Widget build(BuildContext context) {

    final userPhoto = Container(
      width: 90.0,
      height: 90.0,
      margin: const EdgeInsets.only(right: 20.0
     ),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
              width: 2.0,
              style: BorderStyle.solid
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(userData.photoURL)
          )
      ),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(bottom: 5.0),
            child: Text(
                userData.name,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Lato',
                )
            )
        ),
        Text(
            userData.email,
            style: const TextStyle(
                fontSize: 15.0,
                color: Colors.white30,
                fontFamily: 'Lato'
            )
        ),
      ],
    );

    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 0.0
      ),
      child: Row(
        children: <Widget>[
          userPhoto,
          userInfo
        ],
      ),
    );
  }

}