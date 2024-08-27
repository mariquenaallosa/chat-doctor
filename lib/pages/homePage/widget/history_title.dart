import 'package:flutter/material.dart';

class HistoryTitle extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastCall;
  final String specialty;

  const HistoryTitle({super.key, required this.imageUrl, required this.name, required this.lastCall, required this.specialty});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
     padding: EdgeInsets.all(10),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(17),
       color: Theme.of(context).colorScheme.primaryContainer,
     ),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         Image.asset(imageUrl,
         width: 70,),
         const SizedBox(width: 10,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(name, style: Theme.of(context).textTheme.bodyMedium,),
             SizedBox(height: 2,),
             Text(specialty,style: Theme.of(context).textTheme.labelSmall)
           ],
         ),
         SizedBox(width: 10,),
         Text(lastCall, style: Theme.of(context).textTheme.labelMedium)
       ],
     ),
    );
  }
}