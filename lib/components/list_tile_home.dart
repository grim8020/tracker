import 'package:flutter/material.dart';

class ListTileHome extends StatelessWidget {
  const ListTileHome(
      {super.key,
      required this.schoolName,
      required this.staffName,
      required this.positionTitle,
      required this.schoolImage,
      required this.onPress});

  final String schoolName;
  final String staffName;
  final String positionTitle;
  final String schoolImage;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: ListTile(
        onTap: onPress,
        contentPadding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(width: 2, color: Colors.grey.shade200),
        ),
        title: Center(
          child: Text(schoolName),
        ),
        subtitle: Column(
          children: [
            Center(child: Text(staffName)),
            Center(child: Text(positionTitle))
          ],
        ),
        leading: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey,
          child: Center(
            child: Icon(
              Icons.person_2_rounded,
              size: 60,
              color: Colors.black,
            ),
          ),
        ),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            schoolImage,
            width: MediaQuery.of(context).size.width * .2,
          ),
        ),
      ),
    );
  }
}
