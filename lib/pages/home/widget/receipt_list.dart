import 'package:app_social/pages/home/widget/receipt_title.dart';
import 'package:flutter/material.dart';

class ReceiptList extends StatelessWidget {
  const ReceiptList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
            children: const [
             ReceiptTitle(name: "Receta 4", date: "28/08/2024"),
             ReceiptTitle(name: "Receta 3", date: "25/07/2024"),
             ReceiptTitle(name: "Receta 2", date: "24/06/2023"),
             ReceiptTitle(name: "Receta 1", date: "28/01/2022"),
            ] 
          );
  }
}