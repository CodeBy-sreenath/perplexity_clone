import 'package:flutter/material.dart';

class SearchBarButton extends StatefulWidget{
  const SearchBarButton({super.key});
  @override
  State<SearchBarButton> createState()=>_SearchBarButton();
}
class _SearchBarButton extends State<SearchBarButton>{
  @override
  Widget build(BuildContext context){
    return Container(decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: Colors.transparent,
    ),);
//

  }

}
