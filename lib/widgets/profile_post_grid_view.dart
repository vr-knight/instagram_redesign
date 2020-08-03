import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePostGridView extends StatelessWidget {
  final String imgId;

  const ProfilePostGridView(this.imgId);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      height: MediaQuery.of(context).size.width / 3.3,
      width: MediaQuery.of(context).size.width / 3.3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Image.asset(
          imgId,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
