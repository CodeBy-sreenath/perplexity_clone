import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';


class SideBar extends StatefulWidget{
  const SideBar({super.key});
  @override
  State<SideBar>createState()=>_SideBarState();
}
class _SideBarState extends State<SideBar>{
  bool isCollapsed=true;
  @override
  Widget build(BuildContext context){
    return AnimatedContainer(
      duration: Duration(milliseconds: 5000),
      width: isCollapsed ? 64:128,
      color: AppColors.sideNav,
      child: Column(
        crossAxisAlignment: isCollapsed ? CrossAxisAlignment.center:CrossAxisAlignment.start,
        children: [
        const SizedBox(height: 16,),
        Icon(Icons.auto_awesome_mosaic,
        color: AppColors.whiteColor,
        size: 30,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 14,horizontal: 10),

          child:Icon(Icons.add,
        color: AppColors.iconGrey,
        size: 22,
        ), 
        ),
        
        
        Container(
          margin: EdgeInsets.symmetric(vertical: 14,horizontal: 10),

          child: Icon(Icons.search,
        color: AppColors.iconGrey,
        size: 22,),),
        Container(
          margin: EdgeInsets.symmetric(vertical: 14),

          child:Icon(Icons.language,
        color: AppColors.iconGrey,
        size: 22,
        ), 
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 14,horizontal: 10),

          child:Icon(Icons.auto_awesome,
        color: AppColors.iconGrey,
        size: 22,
        ), 
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 14,horizontal: 10),

          child:Icon(Icons.cloud_outlined,
        color: AppColors.iconGrey,
        size: 22,
        ), 
        ),
        const Spacer(),
        GestureDetector(
         // margin: EdgeInsets.symmetric(vertical: 14),
         onTap: () {
          setState(() {
            isCollapsed=!isCollapsed;
            
          });
         },

          child:Icon(isCollapsed? Icons.keyboard_arrow_right:Icons.keyboard_arrow_left,
        color: AppColors.iconGrey,
        size: 22,
        ), 
        ),
        const SizedBox(height: 16,),

        
      ],),

    );
  }

}

  