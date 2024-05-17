import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx/galary.dart';
import 'package:olx/plitka.dart';
import 'package:olx/royxat.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainBody(),
  ));
}

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  List items = [const Galary(), const Listtype(), const Plitka()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(229, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        actions: [
          PopupMenuButton(
            icon: const Icon(CupertinoIcons.list_bullet),
            onSelected: (value) {
              currentindex = value;
              setState(() {});
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 0,
                  child: Text("Galary"),
                ),
                const PopupMenuItem(
                  value: 1, 
                  child: Text("Ro'yxat"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Plitka"),
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - AppBar().preferredSize.height - MediaQuery.of(context).viewPadding.top,
        child: items[currentindex],
      ),
    );
  }
}
