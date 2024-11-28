import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.chevron_left,
                    size: 21,
                  ),
                  Text(
                    "Text Product",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text("wkwwk"),
                  Icon(Icons.access_alarm),
                  Icon(
                    Icons.favorite,
                    size: 21,
                    color: Colors.red,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/IMBand.png",
                      width: double.infinity, height: 401, fit: BoxFit.cover),
                  Text(
                    "MI Band 8 Pro",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "\$54.00",
                    style: TextStyle(fontSize: 20, color: Color(0xff00623B)),
                  ),
                  Text(
                    "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while or life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while or life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ))),
              GestureDetector(
                onTap: () {
                  print("Hello");
                },
                child: Container(
                  color: Color(0xFF00623B),
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  width: double.infinity,
                  child: Text(
                    "Add to bag",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
