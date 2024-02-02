import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:application/Place/model/place.dart';
import 'package:application/Place/ui/widgets/card_image.dart';
import 'package:application/User/model/user_data.dart';
import 'package:application/User/repository/cloud_firestore_api.dart';
import 'package:application/User/ui/widgets/profile_place.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreApi = CloudFirestoreApi();

  void updateUserDataFirestore(UserData user) =>
      _cloudFirestoreApi.updateUserData(user);

  Future<void> updateUserPlaceData(Place place) =>
      _cloudFirestoreApi.updateUserPlaceData(place);

  List<ProfilePlace> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreApi.buildMyPlaces(placesListSnapshot);

  List<Place> buildPlaces(
      List<DocumentSnapshot> placesListSnapshot, UserData userData) =>
      _cloudFirestoreApi.buildPlaces(placesListSnapshot, userData);

  Future likePlace(Place place, String userId) =>
      _cloudFirestoreApi.likePlace(place, userId);

  Stream<QuerySnapshot<Map<String, dynamic>>> myPlacesListStream(String uid) =>
      _cloudFirestoreApi.myPlacesListStream(uid);
}