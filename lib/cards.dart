import 'package:flutter/material.dart';
class Cards extends StatelessWidget {
  final balance;
  final bgcolor;
  final cno;
  // ignore: prefer_typing_uninitialized_variables
  final expno;
  final shadowup;
  final shadowdown;

  Cards({
    @required this.balance,
    @required this.bgcolor,
    @required this.cno,
    @required this.expno,
    @required this.shadowup,
    @required this.shadowdown,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 15.0,
            spreadRadius: 1.0,
            offset: Offset(-4.0, -4.0),
          ),
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15.0,
            spreadRadius: 1.0,
            offset: Offset(4.0, 4.0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Balance",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "VISA",
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: bgcolor,
                     boxShadow: [
          BoxShadow(
            color: shadowup,
            blurRadius: 15.0,
            spreadRadius: 1.0,
            offset: Offset(-4.0, -4.0),
          ),
          BoxShadow(
            color: shadowdown,
            blurRadius: 15.0,
            spreadRadius: 1.0,
            offset: Offset(4.0, 4.0),
          )
        ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "\$ "+"$balance",
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "**** **** "+"$cno",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              Text(
                "$expno",
                style: TextStyle(color: Colors.white,fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
