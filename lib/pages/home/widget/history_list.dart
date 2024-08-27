import 'package:app_social/config/images.dart';
import 'package:app_social/pages/home/widget/history_title.dart';
import 'package:flutter/material.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context) {
   return ListView(
            children: const [
              HistoryTitle(imageUrl: AssetsImages.girlPic, name: "Dra. Pierce, Magali", specialty: "Cardiologia",lastCall: "10:00AM"),
              HistoryTitle(imageUrl: AssetsImages.girlPic, name: "Dra. Grey, Mercedes", specialty: "Clinica",lastCall: "10:00PM"),
              HistoryTitle(imageUrl: AssetsImages.girlPic, name: "Dra. Torres, Carolina", specialty: "Traumatologia",lastCall: "Lunes"),
              HistoryTitle(imageUrl: AssetsImages.girlPic, name: "Dr. Sloan, Marcos", specialty: "Cardiologia",lastCall: "Domingo"),
              HistoryTitle(imageUrl: AssetsImages.girlPic, name: "Dr. Pierce, Cristian", specialty: "Ginecologia",lastCall: "Marzo"),
            ] 
          );
  }
}