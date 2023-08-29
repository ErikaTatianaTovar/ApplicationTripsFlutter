import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: <Widget>[
       Review("assets/img/person.jpeg", "Varuna Yasas", "1 reviews 5 photos", "There is an amazing place in Sri lanka",3),
       Review("assets/img/perfil1.jpeg", "Mario Cardenas", "3 reviews 2 photos", "There is an amazing place in London",4),
       Review("assets/img/perfil2.jpeg", "Alberto Casas", "4 reviews 4 photos", "There is an amazing place in Paris",2),
       Review("assets/img/perfil3.jpeg", "Julia Moncada", "1 reviews 5 photos", "There is an amazing place in Canada",4),
       Review("assets/img/perfil4.jpeg", "Lina Castiblanco", "4 reviews 1 photo", "There is an amazing place in Sri Spain",1),
     ],
   );
    throw UnimplementedError();
  }
}