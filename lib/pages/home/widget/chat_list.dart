import 'package:app_social/config/images.dart';
import 'package:app_social/pages/home/widget/chat_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
            children: [
             InkWell(
              onTap: () {
                Get.toNamed("/chat");
              },
               child: const ChatTitle(
                imageUrl: AssetsImages.girlPic, 
                name: "Laura Gonzalez", 
                lastChat: "Recetas para los medicamentos", 
                lastTime: "10:00AM"),
             ),
              InkWell(
                onTap: () {
                Get.toNamed("/chat");
                },
                child: const ChatTitle(
                imageUrl: AssetsImages.boyPic, 
                name: "Juan Perez", 
                lastChat: "Puede compartir las indicaciones?", 
                lastTime: "09:30PM"),
              )
            ],
          );
  }
}