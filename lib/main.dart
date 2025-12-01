import 'package:flutter/material.dart';
import 'package:perplexity_clone/pages/home_pages.dart';
import 'package:perplexity_clone/theme/colors.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'perplexity app',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background
      ),
      home: const HomePage (),

    );
  }
}
