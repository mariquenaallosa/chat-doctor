import 'package:app_social/config/images.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(AssetsImages.girlPic,width: 40,),
            SizedBox(width: 10,),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nombre del chat", style: Theme.of(context).textTheme.bodyMedium),
              Text("ultima vez conectado", style: Theme.of(context).textTheme.labelSmall)
            ],
          ),
          ]
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              constraints: BoxConstraints(
                minWidth: 2,
                maxWidth: MediaQuery.sizeOf(context).width / 1.3,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )
              ),                                
              child: Text("Texto de prueba para el chat de que se yo, pero tenemos que probar que funcione correactamente"),
            )
          ],
        ),
      ),
    );
  }
}