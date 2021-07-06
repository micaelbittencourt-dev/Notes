import 'package:flutter/material.dart';

class AppCardWidget extends StatelessWidget {
  String? title;
  String? routerName;
  Object? arguments;
  void Function()? onTap;
  void Function()? onPressed;
  AppCardWidget({
    Key? key,
    this.title,
    this.routerName,
    this.arguments,
    this.onTap,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title!),
        onTap: onTap,
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
