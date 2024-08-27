import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReceiptTitle extends StatelessWidget {
  final String name;
  final String date;
  const ReceiptTitle({super.key, required this.name, required this.date});

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
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
          Row(
            children: [
              Icon(Icons.receipt_long, size: 40,color: Theme.of(context).colorScheme.secondary,),
              SizedBox(width: 25,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.bodyMedium,),
                  const SizedBox(height: 2),
                  Text(date,style: Theme.of(context).textTheme.labelSmall)
                ],),
              ],
          ),
          Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Icon(Icons.remove_red_eye_outlined, size: 20,color: Theme.of(context).colorScheme.onPrimaryContainer,),
             const SizedBox(width: 10),
            Icon(Icons.download_outlined, size: 20,color: Theme.of(context).colorScheme.onPrimaryContainer,
             ),
           ],),

       ],
     ),
    );
  }
}