import 'package:app_social/config/images.dart';
import 'package:app_social/config/strings.dart';
import 'package:app_social/pages/homePage/widget/chat_list.dart';
import 'package:app_social/pages/homePage/widget/history_list.dart';
import 'package:app_social/pages/homePage/widget/receipt_list.dart';
import 'package:app_social/pages/homePage/widget/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineSmall,
          ),
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: SvgPicture.asset(
            AssetsImages.appIconSVG,
            colorFilter: const ColorFilter.mode( Color.fromARGB(255, 226, 227, 228), BlendMode.srcIn),
            ),
        ),
          leadingWidth: 37,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search),
            ),
            IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_vert),
            ),
        ],
        bottom: myTabBar(tabController, context),
      ),
      floatingActionButton: FloatingActionButton.small(
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        foregroundColor: Colors.white,
        onPressed: (){},
        child: Icon(Icons.video_call_sharp, size: 30,)
        ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: TabBarView(
          controller: tabController,
          children: [
            ChatList(),
            HistoryList(),
            ReceiptList()
          ]
          ),
      )
    );
  }
}