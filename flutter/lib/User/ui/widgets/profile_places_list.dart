import 'package:flutter/material.dart';
import 'profile_place.dart';
import '../../../Place/model/place.dart';

class ProfilePlacesList extends StatelessWidget {

  Place place = Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  Place place2 = Place('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');
  Place place3 = Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  Place place4 = Place('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');
  Place place5 = Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  Place place6 = Place('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfilePlace('assets/img/arbol.jpeg', place),
          ProfilePlace('assets/img/lago.jpeg', place2),
          ProfilePlace('assets/img/montaña.jpeg', place3),
          ProfilePlace('assets/img/muelle.jpeg', place4),
          ProfilePlace('assets/img/rio.jpeg', place5),
          ProfilePlace('assets/img/selva.jpeg', place6),
        ],
      ),
    );
  }

}