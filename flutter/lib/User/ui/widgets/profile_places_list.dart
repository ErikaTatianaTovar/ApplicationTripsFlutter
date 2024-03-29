import 'package:application/User/model/user_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:application/User/bloc/bloc_user.dart';
import 'package:application/User/model/user_data.dart';

class ProfilePlacesList extends StatelessWidget {
  final UserData userData;
  ProfilePlacesList({Key? key, required this.userData});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc;
    userBloc = BlocProvider.of<UserBloc>(context);
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: StreamBuilder(
          stream: userBloc.myPlacesListStream(userData.userId!),
          builder: (context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text(
                    "Error al obtener el sanpshot de Places de CloudFirestore"),
              );
            }
            //snapshot.data.docs.isEmpty

            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return CircularProgressIndicator();

              case ConnectionState.waiting:
                return Center(child: Text("Loading..."));

              case ConnectionState.active:
                if (snapshot.data!.docs.isNotEmpty) {
                  return Column(
                    children: userBloc.buildMyPlaces(snapshot.data!.docs),
                  );
                } else {
                  print("Active: Snapshot: ${snapshot.data!.docs}");
                  return const Center(
                      child: Text(
                          "Active: No tienes Places agregados aún, comienza agregando uno",
                          maxLines: 2,
                          textAlign: TextAlign.left));
                }

              case ConnectionState.done:
                if (snapshot.data!.docs.isNotEmpty) {
                  return Column(
                    children: userBloc.buildMyPlaces(snapshot.data!.docs),
                  );
                } else {
                  print("Snapshot: ${snapshot.data!.docs}");
                  return const Center(
                      child: Text(
                          "Done: No tienes Places agregados aún, comienza agregando uno",
                          maxLines: 2,
                          textAlign: TextAlign.left));
                }

              default:
                if (snapshot.data!.docs.isNotEmpty) {
                  return Column(
                    children: userBloc.buildMyPlaces(snapshot.data!.docs),
                  );
                } else
                  return Center(
                      child: Text(
                          "Default: No tienes Places agregados aún, comienza agregando uno",
                          maxLines: 2,
                          textAlign: TextAlign.left));
            }
          }),
    );
  }
}