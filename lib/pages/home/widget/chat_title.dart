import 'package:flutter/material.dart';

class ChatTitle extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastChat;
  final String lastTime;
  const ChatTitle({
    super.key, required this.imageUrl, required this.name, required this.lastChat, required this.lastTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
     padding: const EdgeInsets.all(10),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(17),
       color: Theme.of(context).colorScheme.primaryContainer,
     ),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Image.asset(imageUrl,
         width: 70,),
         const SizedBox(width: 10,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(name, style: Theme.of(context).textTheme.bodyMedium,),
             const SizedBox(height: 2,),
             Text(lastChat,style: Theme.of(context).textTheme.labelSmall)
           ],
         ),
         const SizedBox(width: 10,),
         Text(lastTime, style: Theme.of(context).textTheme.labelMedium)
       ],
     ),
    );
  }
}