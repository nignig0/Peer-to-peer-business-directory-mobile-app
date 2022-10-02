import 'package:flutter/material.dart';

class GenericAppBar extends StatelessWidget implements PreferredSizeWidget{
  GenericAppBar({ 
  required this.pageName, 
  required this.isHomePage
   });
  String pageName;
  bool isHomePage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(pageName,
      style: const TextStyle(
        color: Colors.white,  
        fontSize: 36
      ),),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 20),
          child: Stack(
            fit: StackFit.loose,
            alignment: Alignment.topRight, 
            children: [
              const Icon(Icons.shopping_bag_outlined, size: 36), 
              Positioned(child: Container(
                height: 10,
                width: 10, 
                decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  color: Theme.of(context).primaryColor,
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}