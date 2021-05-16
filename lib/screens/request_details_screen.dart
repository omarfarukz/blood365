import 'package:blood365/components/rounded_button.dart';
import 'package:blood365/screens/model/requestModel.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/requestList.dart';

class RequestDetails extends StatefulWidget {
  //const RequestDetails({Key key}) : super(key: key);
  final RequestModel request;

  RequestDetails({@required this.request});

  @override
  _RequestDetailsState createState() => _RequestDetailsState();
}

class _RequestDetailsState extends State<RequestDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                //width: MediaQuery.of(context).size.width,
                height: 300,
                child: Carousel(
                  images: [
                    NetworkImage("${widget.request.patientsImage}"),
                    NetworkImage("${widget.request.patientsImage}"),
                    NetworkImage("${widget.request.patientsImage}"),
                  ],
                  dotBgColor: Colors.white,
                  dotColor: Colors.grey,
                  dotIncreasedColor: Colors.red,
                  dotIncreaseSize: 1.5,
                  //autoplay: false,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [Icon(Icons.verified_user), Text('Requester')],
                  ),
                  Text(
                    widget.request.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,

                      //backgroundColor: Colors.grey),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [
                      Icon(Icons.category),
                      Text('Blood Need'),
                    ],
                  ),
                  Text(
                    widget.request.bloodGroup,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [Icon(Icons.location_on), Text('Hospital Name')],
                  ),
                  Text(
                    widget.request.hospitalName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.red),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [
                      Icon(Icons.location_on),
                      Text('Hospital Location')
                    ],
                  ),
                  Text(
                    widget.request.hospitalLocation,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.red),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [Icon(Icons.king_bed), Text('Patients Bed no:')],
                  ),
                  Text(widget.request.patientsBed),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [
                      Icon(Icons.category),
                      Text('Patients Department:')
                    ],
                  ),
                  Text(widget.request.patientsDepartment),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [Icon(Icons.merge_type), Text('Patients TYpe:')],
                  ),
                  Text(widget.request.patientsType),
                ],
              ),
              Divider(),
              Container(
                decoration: BoxDecoration(),
              ),
              MaterialButton(
                elevation: 5,
                color: Colors.blueAccent,
                minWidth: 200.0,
                height: 42.0,
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  //color: Colors.blueAccent,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Call Requester',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              RoundedButton(
                title: 'Accept Request',
                colour: Colors.lightBlueAccent,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
