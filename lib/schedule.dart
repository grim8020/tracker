import 'package:flutter/material.dart';

import 'components/back_button.dart';
import 'components/customAppBar.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: CustomAppBar(),
      ),
      drawer: const MenuDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            CustomBackButton(
              onPress: () => Navigator.pop(context),
            ),
            Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              //shadowColor: Colors.blueGrey,
              child: Container(
                child: Center(child: Text('Calendar position')),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
            ListView(
              padding: EdgeInsets.all(20),
              shrinkWrap: true,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                  //shadowColor: Colors.blueGrey,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 3, color: Colors.grey.shade200),
                    ),
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_pin),
                      ],
                    ),
                    title: Text('Current location of ITS'),
                    subtitle: Text('This will be editable by ITS'),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                  //shadowColor: Colors.blueGrey,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 3, color: Colors.grey.shade200),
                    ),
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.task),
                      ],
                    ),
                    title: Text('Current task of ITS'),
                    subtitle: Text('This will be editable by ITS'),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                  //shadowColor: Colors.blueGrey,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 3, color: Colors.grey.shade200),
                    ),
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.priority_high),
                      ],
                    ),
                    title: Text('Current task priority of ITS'),
                    subtitle: Text('This will be editable by ITS'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/urgentRequest'),
                      child: Text('Urgent'),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(10),
                        //shadowColor: MaterialStateProperty.all(Colors.blueGrey),
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () => null,
                      child: Text(
                        'Schedule',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(10),
                        //shadowColor: MaterialStateProperty.all(Colors.blueGrey),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade400),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                  width: 3, color: Colors.grey.shade500)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
