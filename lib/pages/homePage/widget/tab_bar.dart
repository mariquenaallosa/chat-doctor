
import 'package:flutter/material.dart';

myTabBar(TabController tabController, BuildContext context){
  return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: TabBar(
            controller: tabController,
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Historial",
              ),
              Tab(
                text: "Recetas",
              ),],
            unselectedLabelColor: Theme.of(context).colorScheme.onPrimary,
            dividerColor: Theme.of(context).colorScheme.primaryContainer,
            labelColor: Theme.of(context).colorScheme.secondary,
            indicatorColor:Theme.of(context).colorScheme.secondary ,
          ),
    );
}