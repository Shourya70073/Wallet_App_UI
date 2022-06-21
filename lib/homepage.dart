import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'cards.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.currency_rupee),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.settings,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      //appbar
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(" Cards", style: TextStyle(fontSize: 26)),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(30),
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 210,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Cards(
                      balance: "5467.90",
                      cno: "5678",
                      expno: "11/24",
                      bgcolor: Colors.grey[900],
                      shadowup: Colors.grey[800],
                      shadowdown: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Cards(
                      balance: "8467.90",
                      cno: "5690",
                      expno: "12/26",
                      bgcolor: Colors.purple[600],
                      shadowup: Colors.purple[400],
                      shadowdown: Colors.purple[800],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Cards(
                      balance: "2467.90",
                      cno: "9087",
                      expno: "08/26",
                      bgcolor: Colors.red[600],
                      shadowup: Colors.red[500],
                      shadowdown: Colors.red[800],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.black),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        padding: EdgeInsets.all(12),
                        child: Container(
                          child: Center(
                            child: Image(
                              image: AssetImage("image/money-transfer.png"),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(4.0, 4.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(-4.0, -4.0)),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Send",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        padding: EdgeInsets.all(12),
                        child: Container(
                          child: Center(
                            child: Image(
                              image: AssetImage("image/profits.png"),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(4.0, 4.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(-4.0, -4.0)),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Pay",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        padding: EdgeInsets.all(12),
                        child: Container(
                          child: Center(
                            child: Image(
                              image: AssetImage("image/bill.png"),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(4.0, 4.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(-4.0, -4.0)),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Bills",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 82,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                          offset: Offset(4.0, 4.0)),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                          offset: Offset(-4.0, -4.0)),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image(
                            height: 30,
                            width: 30,
                            image: AssetImage("image/analytics.png")),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(4.0, 4.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(-4.0, -4.0)),
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Transaction",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Transaction History")
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      //cards
    ));
  }
}
