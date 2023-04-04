import 'package:flutter/material.dart';

import 'components/back_button.dart';
import 'components/customAppBar.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

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
          ],
        ),
      ),
    );
  }
}
