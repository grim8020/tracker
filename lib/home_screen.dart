import 'package:flutter/material.dart';
import 'package:trackit/components/back_button.dart';
import 'package:trackit/components/list_tile_home.dart';

import 'components/customAppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Choose a location or specialist:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 20,
              endIndent: 20,
              thickness: 3,
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.vertical,
                children: [
                  ListTileHome(
                      onPress: () {
                        Navigator.pushNamed(context, '/schedule');
                      },
                      schoolName: 'Help Desk',
                      staffName: 'IT Department',
                      positionTitle: 'IT Specialists',
                      schoolImage:
                          'https://www.eiassoc.com/uploads/projectimages/17A4ee7fd58690cb.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  ListTileHome(
                      onPress: () {
                        Navigator.pushNamed(context, '/schedule');
                      },
                      schoolName: 'High School',
                      staffName: 'Kathy Johnson',
                      positionTitle: 'Tech Specialist',
                      schoolImage:
                          'https://www.gannett-cdn.com/presto/2018/10/30/PPYD/686b1c3e-545a-4592-a038-6376fcd732a0-181030_djs_Spring_Grove_Area_High_School_01.jpg?crop=2999,1681,x0,y0&width=2999&height=1681&format=pjpg&auto=webp'),
                  SizedBox(
                    height: 20,
                  ),
                  ListTileHome(
                      onPress: () {
                        Navigator.pushNamed(context, '/schedule');
                      },
                      schoolName: 'Middle School',
                      staffName: 'Dan Thompson',
                      positionTitle: 'Tech Specialist',
                      schoolImage:
                          'https://scholamatch-uploads-prod.s3.amazonaws.com/school/103010/7814bfca-8b98-4759-9813-568c65ffa49e.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  ListTileHome(
                      onPress: () {
                        Navigator.pushNamed(context, '/schedule');
                      },
                      schoolName: 'Intermediate',
                      staffName: 'Dan Thompson',
                      positionTitle: 'Tech Specialist',
                      schoolImage:
                          'https://cdn.businessyab.com/assets/uploads/3604a1fe968a97a4bffddfa1d119e048_-united-states-pennsylvania-york-county-jackson-township-spring-grove-roth-church-rd-1480-spring-grove-area-intermediate-school.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  ListTileHome(
                      onPress: () {
                        Navigator.pushNamed(context, '/schedule');
                      },
                      schoolName: 'SG Elementary',
                      staffName: 'Susan Adams',
                      positionTitle: 'Tech Specialist',
                      schoolImage:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-0DIJEHJmrZyc64Nza8Se8zuDRl71qPoOA&usqp=CAU'),
                  SizedBox(
                    height: 20,
                  ),
                  ListTileHome(
                      onPress: () {
                        Navigator.pushNamed(context, '/schedule');
                      },
                      schoolName: 'Paradise Elem.',
                      staffName: 'Susan Adams',
                      positionTitle: 'Tech Specialist',
                      schoolImage:
                          'https://www.eiassoc.com/uploads/projectimages/17A4ee7fd58690cb.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  ListTileHome(
                      onPress: () {
                        Navigator.pushNamed(context, '/schedule');
                      },
                      schoolName: 'New Salem Elem.',
                      staffName: 'Susan Adams',
                      positionTitle: 'Tech Specialist',
                      schoolImage:
                          'https://www.eiassoc.com/uploads/projectimages/17A4ee7fd58690cb.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  ListTileHome(
                      onPress: () {
                        Navigator.pushNamed(context, '/schedule');
                      },
                      schoolName: 'ESC',
                      staffName: 'Kathy Johnson',
                      positionTitle: 'Tech Specialist',
                      schoolImage:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtuLfUxjBDB6FqzkXLHMicLpAAYwoHwb_1kQ&usqp=CAU')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
