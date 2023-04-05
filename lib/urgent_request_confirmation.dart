import 'package:flutter/material.dart';

import 'components/back_button.dart';
import 'components/customAppBar.dart';

class UrgentRequestConfirmation extends StatelessWidget {
  const UrgentRequestConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: CustomAppBar(),
      ),
      drawer: const MenuDrawer(),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SafeArea(
          child: Column(
            children: [
              CustomBackButton(
                onPress: () => Navigator.pop(context),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.grey.shade200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 100.0, horizontal: 30),
                        child: Column(
                          children: [
                            Text(
                              'Thank You!',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Text('Your request has been submitted.'),
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 40,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey.shade500)),
                                  onPressed: () => Navigator.popAndPushNamed(
                                      context, '/homeScreen'),
                                  child: const Text('Home'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
