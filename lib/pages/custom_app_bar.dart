import 'package:flutter/material.dart';

class CustomerAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomerAppBar({
    Key? key,
  }) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.search),
        actions:[
          Container(
              margin: const EdgeInsets.only(right:20),
              child:const CircleAvatar(backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/7200238?s=64&v=4'
              ),)
          )
        ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58.0);
}