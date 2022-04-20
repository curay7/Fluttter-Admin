import 'package:flutter/material.dart';

class DashboardFirstPage extends StatelessWidget {
  const DashboardFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffF1F4FA),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(39, 30, 30, 34),
              child: Row(
                children: [
                  Text(
                    "Product Analytics",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "10-06-2021",
                          style:
                              TextStyle(color: Colors.black, fontSize: 14.22),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        primary: Colors.white,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.fromLTRB(18, 15, 22, 15)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "10-06-2021",
                          style:
                              TextStyle(color: Colors.black, fontSize: 14.22),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        primary: Colors.white,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.fromLTRB(18, 15, 22, 15)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(39, 0, 30, 34),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Product",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w100),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        primary: Color(0xff3A36DB),
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.fromLTRB(30, 22, 30, 22)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Costumer",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w100),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        primary: Colors.white,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.fromLTRB(30, 22, 30, 22)),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Add Product",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        primary: Color(0xff3A36DB),
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.fromLTRB(18, 18, 22, 18)),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(39, 0, 30, 34),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              width: 363,
                              height: 161,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white),
                              child: Text("Two"),
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              width: 363,
                              height: 161,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        // Container(
                                        //   margin: EdgeInsets.fromLTRB(
                                        //       20, 20, 15, 20),
                                        //   width: 100,
                                        //   height: 100,
                                        //   decoration: BoxDecoration(
                                        //       borderRadius:
                                        //           BorderRadius.circular(120),
                                        //       color: Colors.grey),
                                        //   child: Center(
                                        //     child: Icon(
                                        //       Icons.shopping_cart,
                                        //       color: Colors.amber,
                                        //     ),
                                        //   ),
                                        // ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              20, 12, 15, 12),
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xffF1F4FA),
                                            radius: 30,
                                            child: Icon(
                                              Icons.shopping_cart,
                                              color: Colors.amber,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 12, 15, 12),
                                          child: Column(
                                            children: <Widget>[
                                              //TODO:fix text align center
                                              Text(
                                                "Should be left",
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "14,000,000",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          // child: Column(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.start,
                                          //   children: [
                                          // Text("Total Sales"),
                                          // SizedBox(
                                          //   height: 10,
                                          // ),
                                          // Text(
                                          //   "14,000,000",
                                          //   style: TextStyle(
                                          //       fontSize: 25,
                                          //       fontWeight:
                                          //           FontWeight.bold),
                                          // )
                                          //   ],
                                          // ),
                                        ),
                                        Spacer(),
                                        Text("Two")
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.black,
                                      ))
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Text("1"),
                      color: Colors.blue,
                    ))
              ],
            )
          ],
        ));
  }
}
