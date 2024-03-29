import 'package:application/User/ui/screens/profile_header.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:application/User/bloc/bloc_user.dart';
import 'package:application/User/model/user_data.dart' as modelUser;
import 'package:application/User/ui/widgets/profile_places_list.dart';
import 'package:application/widgets/gradient_back.dart';


class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
              return showProfileData(snapshot);
            case ConnectionState.done:
              return showProfileData(snapshot);
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            default:
              return showProfileData(snapshot);
          }
        });
  }

  Widget showProfileData(AsyncSnapshot<User?> snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No logueado");
      return Stack(
        children: <Widget>[
          GradientBack(height: 250.0), //ProfileBackground(),
          Container(
              alignment: Alignment(0.0, 0.0),
              child: Text(
                "Usuario no logueado. Haz login",
                maxLines: 2,
                textAlign: TextAlign.center,
              )),
        ],
      );
    } else {
      print("Usuario logueado");
      modelUser.UserData userData = modelUser.UserData(
          userId: snapshot.data!.uid,
          name: snapshot.data!.displayName!,
          email: snapshot.data!.email!,
          photoURL: snapshot.data!.photoURL!);
      return Stack(
        children: <Widget>[
          GradientBack(height: 250.0), //ProfileBackground(),
          ListView(
            children: <Widget>[
              ProfileHeader(userData: userData),
              ProfilePlacesList(userData: userData)
            ],
          ),
        ],
      );
    }
  }
}