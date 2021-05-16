import 'package:blood365/components/rounded_button.dart';
import 'package:blood365/main.dart';
import 'package:flutter/material.dart';
import 'package:blood365/screens/model/warppedSingleIconChip.dart';
import '../constants.dart';
import 'model/wrappedBloodTypeChip.dart';

class DonationRequestScreen extends StatefulWidget {
  static const String id = 'donation_request_screen';
  @override
  _DonationRequestScreenState createState() => _DonationRequestScreenState();
}

class _DonationRequestScreenState extends State<DonationRequestScreen> {
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _form,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    warppedBloodType(),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width - 10,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(0, 2),
                              blurRadius: 30,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          // onChanged: () {},
                          //   //Do something with the user input.

                          decoration: rTextFileDecoration.copyWith(
                              hintText: 'Patients Name'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width - 10,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(0, 2),
                              blurRadius: 30,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          // onChanged: () {},
                          //   //Do something with the user input.

                          decoration: rTextFileDecoration.copyWith(
                              hintText: 'Contact Number'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Please Select the Blood group'),
                    wrappedSingleIconChip(),

                    SizedBox(
                      height: 10,
                    ),
                    //
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width - 10,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(0, 2),
                              blurRadius: 30,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          // onChanged: () {},
                          //   //Do something with the user input.

                          decoration: rTextFileDecoration.copyWith(
                              hintText: 'Hospital Name'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width - 10,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(0, 2),
                              blurRadius: 30,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          // onChanged: () {},
                          //   //Do something with the user input.

                          decoration: rTextFileDecoration.copyWith(
                              hintText: 'Hospital Address'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width - 10,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(0, 2),
                              blurRadius: 30,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          // onChanged: () {},
                          //   //Do something with the user input.

                          decoration: rTextFileDecoration.copyWith(
                              hintText: 'Hospital Postcode'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width - 10,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(0, 2),
                              blurRadius: 30,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          // onChanged: () {},
                          //   //Do something with the user input.

                          decoration: rTextFileDecoration.copyWith(
                              hintText: 'Patients Bed Number'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width - 10,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(0, 2),
                              blurRadius: 30,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          // onChanged: () {},
                          //   //Do something with the user input.

                          decoration: rTextFileDecoration.copyWith(
                              hintText: 'Patients type'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width - 10,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(0, 2),
                              blurRadius: 30,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          // onChanged: () {},
                          //   //Do something with the user input.

                          decoration: rTextFileDecoration.copyWith(
                              hintText: 'Hospital Department'),
                        ),
                      ),
                    ),
                    RoundedButton(
                      title: 'Request',
                      colour: Colors.lightBlueAccent,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
