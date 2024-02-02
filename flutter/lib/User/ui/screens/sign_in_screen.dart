import 'package:application/User/bloc/bloc_user.dart';
import 'package:application/widgets/button_green.dart';
import 'package:application/widgets/gradient_back.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import '../../../flutter_trips_cupertino.dart';
import '../../model/user_data.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  late double screenWidht;
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    screenWidht = MediaQuery.of(context).size.width;
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          } else {
            return FlutterTripsCupertino();
          }
        });
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack(height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Container(
                      width: screenWidht,
                      margin: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: const Text("Welcome. \nThis is your Travel App",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: "Lato",
                              color: Colors.white,
                              fontWeight: FontWeight.bold)))),
             /* const Text(
                "Welcome. \n This is your Travel app",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonWhite(text: "Create an account", onPressed: (){},
                width: 300.0,
                height: 50.0,),*/

              ButtonGreen(
                text: "Login with Gmail",
                onPressed: () {
                  userBloc.signOut();
                  userBloc.signIn().then((value) {
                    userBloc.updateUserData(UserData(
                        userId: value!.user!.uid.toString(),
                        name: value.user!.displayName.toString(),
                        email: value.user!.email.toString(),
                        photoURL: value.user!.photoURL.toString()));
                  });
                },
                width: 300.0,
                height: 50.0,
              ),

              Container(
                margin: const EdgeInsets.only(top: 20.0),
             child: const Text(
                "More ways to login",
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    ),
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
