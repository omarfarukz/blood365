import 'package:blood365/screens/helper/change_request_screen.dart';
import 'package:blood365/screens/model/requestModel.dart';
import 'package:blood365/screens/request_details_screen.dart';
import 'package:flutter/material.dart';

import 'model/requestList.dart';

List<RequestModel> requestList = [];

class Featured extends StatelessWidget {
  //const Featured({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: requestList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  changeScreen(
                    _,
                    RequestDetails(
                      request: requestList[index],
                    ),
                  );
                },
                child: Container(
                  height: 220,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.shade50,
                          offset: Offset(4, 6),
                          blurRadius: 20),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.network(
                        "${requestList[index].patientsImage}",
                        height: 140,
                        //width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${requestList[index].bloodGroup} Blood Needed",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.live_help,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.location_on,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${requestList[index].hospitalName}",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
