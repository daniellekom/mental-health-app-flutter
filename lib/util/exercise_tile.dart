import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {

  final icon;
  final String exerciseName;
  final int numberOfExercises;
  final color;


  const ExerciseTile({Key? key,
    this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
    this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: color,
                  child:  Icon(icon,color: Colors.white,),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  //title
                  Text(
                    exerciseName,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  //subtitle
                  Text(
                    numberOfExercises.toString() + 'Exercises',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.more_horiz),
        ]),
      ),
    );
  }
}
