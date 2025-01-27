import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              context.go("/home");
            },
            icon: Icon(CupertinoIcons.home),
          ),
          IconButton(
            onPressed: () {
              context.go("/photo");
            },
            icon: Icon(CupertinoIcons.camera),
          ),
          IconButton(
            onPressed: () {
              context.go("/profile");
            },
            icon: Icon(CupertinoIcons.person),
          ),
        ],
      ),
    );
  }
}
