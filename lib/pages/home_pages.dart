import 'package:flutter/material.dart';
import 'package:perplexity_clone/pages/widgets/search_section.dart';
//import 'package:perplexity_clone/pages/widgets/search_bar.dart';
import 'package:perplexity_clone/pages/widgets/sidebar.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          //sidebar
          //searchbar
          Column(
            
            children: [
              Expanded(child:
              SearchSection()),
              Container(
                height: 20,
              )
              

            ],
          )
        ],
      )
    );
  }

}