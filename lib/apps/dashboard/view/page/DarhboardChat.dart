import 'package:flutter/material.dart';

class DashboardChat extends StatefulWidget {
  DashboardChat({Key? key}) : super(key: key);

  @override
  State<DashboardChat> createState() => _DashboardChatState();
}

class _DashboardChatState extends State<DashboardChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          "Message",
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.blueAccent[200],
                          radius: 20,
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              //labelText: 'Label text',
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(
                                Icons.search,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 60,
                            itemBuilder: (context, index) => Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.account_circle,
                                    size: 50,
                                  ),
                                  title: Text('Three-line ListTile'),
                                  subtitle: Text(
                                      'A sufficiently long subtitle warrants three lines.'),
                                  trailing: Text("0$index"),
                                  isThreeLine: true,
                                ),
                                Divider(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  // for (int count in List.generate(12, (index) => index + 1))
                  //   Expanded(
                  //     child: ListTile(
                  //       leading: Icon(
                  //         Icons.account_circle,
                  //         size: 60,
                  //       ),
                  //       title: Text('Three-line ListTile'),
                  //       subtitle: Text(
                  //           'A sufficiently long subtitle warrants three lines.'),
                  //       trailing: Text("0$count"),
                  //       isThreeLine: true,
                  //     ),
                  //   )

                  // ListTile(
                  //   title: Column(
                  //     children: [
                  //       Text('List item $count'),
                  //       Text('List item $count')
                  //     ],
                  //   ),
                  //   leading: Icon(
                  //     Icons.account_circle,
                  //     size: 50,
                  //   ),
                  //   trailing: Text("0$count"),
                  // )
                ],
              ),
            ),
          ),

          // Row(
          //                   children: [
          //                     Expanded(
          //                         flex: 4,
          //                         child: TextField(
          //                           keyboardType: TextInputType.multiline,
          //                           textInputAction: TextInputAction.newline,
          //                           minLines: 1,
          //                           maxLines: 4,
          //                           decoration: InputDecoration(
          //                             labelText: 'Message',
          //                             border: OutlineInputBorder(),
          //                           ),
          //                         )),
          //                     Padding(padding: EdgeInsets.only(left: 15)),
          //                     Expanded(
          //                       flex: 1,
          //                       child: ElevatedButton(
          //                         onPressed: () {},
          //                         child: Text("Send"),
          //                         style: ButtonStyle(
          //                             padding: MaterialStateProperty.all(
          //                                 EdgeInsets.all(20)),
          //                             textStyle: MaterialStateProperty.all(
          //                                 TextStyle(fontSize: 15))),
          //                       ),
          //                     )
          //                   ],
          //                 )

          // Expanded(
          //   flex: 6,
          //   child: Card(
          //     child: Column(
          //       children: [
          //         Expanded(
          //           child: SingleChildScrollView(
          //             child: Column(
          //               children: [
          //                 ListView.builder(
          //                   physics: NeverScrollableScrollPhysics(),
          //                   shrinkWrap: false,
          //                   itemCount: 60,
          //                   itemBuilder: (context, index) => Column(
          //                     children: [
          //                       ListTile(
          //                         leading: Icon(
          //                           Icons.account_circle,
          //                           size: 60,
          //                         ),
          //                         title: Text('Three-line ListTile'),
          //                         subtitle: Text(
          //                             'A sufficiently long subtitle warrants three lines.'),
          //                         trailing: Text("0$index"),
          //                         isThreeLine: true,
          //                       ),
          //                       Divider(),
          //                     ],
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),

          //         Container(
          //           padding: EdgeInsets.all(20),
          //           child: Row(
          //             children: [
          //               Expanded(
          //                   flex: 4,
          //                   child: TextField(
          //                     keyboardType: TextInputType.multiline,
          //                     textInputAction: TextInputAction.newline,
          //                     minLines: 1,
          //                     maxLines: 4,
          //                     decoration: InputDecoration(
          //                       labelText: 'Message',
          //                       border: OutlineInputBorder(),
          //                     ),
          //                   )),
          //               Padding(padding: EdgeInsets.only(left: 15)),
          //               Expanded(
          //                 flex: 1,
          //                 child: ElevatedButton(
          //                   onPressed: () {},
          //                   child: Text("Send"),
          //                   style: ButtonStyle(
          //                       padding: MaterialStateProperty.all(
          //                           EdgeInsets.all(20)),
          //                       textStyle: MaterialStateProperty.all(
          //                           TextStyle(fontSize: 15))),
          //                 ),
          //               )
          //             ],
          //           ),
          //         )
          //         // for (int count in List.generate(12, (index) => index + 1))
          //         //   Expanded(
          //         //     child: ListTile(
          //         //       leading: Icon(
          //         //         Icons.account_circle,
          //         //         size: 60,
          //         //       ),
          //         //       title: Text('Three-line ListTile'),
          //         //       subtitle: Text(
          //         //           'A sufficiently long subtitle warrants three lines.'),
          //         //       trailing: Text("0$count"),
          //         //       isThreeLine: true,
          //         //     ),
          //         //   )

          //         // ListTile(
          //         //   title: Column(
          //         //     children: [
          //         //       Text('List item $count'),
          //         //       Text('List item $count')
          //         //     ],
          //         //   ),
          //         //   leading: Icon(
          //         //     Icons.account_circle,
          //         //     size: 50,
          //         //   ),
          //         //   trailing: Text("0$count"),
          //         // )
          //       ],
          //     ),
          //   ),
          // )

          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }
}
