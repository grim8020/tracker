import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/back_button.dart';
import 'components/customAppBar.dart';

class UrgentRequest extends StatelessWidget {
  const UrgentRequest({Key? key}) : super(key: key);

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
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 10,
                    color: Colors.grey.shade200,
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.red.shade400,
                                radius: 50,
                                child: Icon(
                                  Icons.priority_high_rounded,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                'Urgent Request',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 25),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 25),
                              child: TextField(
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: false),
                                maxLength: 4,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                obscureText: false,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'School Phone Extension',
                                  // labelStyle: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'Thank you for reaching out with your urgent request.  We will call you are the extension provided as soon as possible.  Please be patient as demand may be higher than usual.'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'In the meantime, please check out the FAQs for possible assistance.'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5.0, right: 5.0, top: 20, bottom: 10),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () => Navigator.pushNamed(
                                      context, '/urgentRequestConfirmation'),
                                  child: Text('Submit Urgent Request'),
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(10),
                                    //shadowColor: MaterialStateProperty.all(Colors.blueGrey),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.red.shade400),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 10),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () =>
                                      Navigator.pushNamed(context, '/faq'),
                                  child: Text('FAQs'),
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(10),
                                    //shadowColor: MaterialStateProperty.all(Colors.blueGrey),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
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
                  ),
                ),
              ),
              // SizedBox(
              //   height: 80,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
