import 'package:flutter/material.dart';

dashboardAppBar(context) {
  var screenSize = MediaQuery.of(context).size;
  return PreferredSize(
    preferredSize: Size(screenSize.width, 1000),
    child: Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 70,
                maxWidth: 70,
              ),
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            // Expanded(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         'Dash',
            //         style: TextStyle(
            //             fontSize: 40, color: Colors.redAccent[100]),
            //       ),
            //     ],
            //   ),
            // ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              width: screenSize.width / 50,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Login',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}