import 'package:flutter/material.dart';
import 'dart:math' as math;

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final options = ["Recharge your number", "Recharge for a friend"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 5.0),
      padding: const EdgeInsets.all(10.0),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(-2, -2),
                      color: Colors.black12,
                      blurRadius: 20.0)
                ]),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue.shade900),
                    child: Column(
                      children: [
                        const SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: const Icon(Icons.arrow_back_ios,
                                      color: Colors.white, size: 20.0),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Hi, User',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold)),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.0),
                                    child: Text('0123456789  | Prepaid VoLTE',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                  padding: const EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      shape: BoxShape.circle),
                                  child: Transform.rotate(
                                    angle: 4.7,
                                    child: const Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        size: 16.0,
                                        color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                        Divider(
                            height: 1.0,
                            thickness: 1.0,
                            color: Colors.white.withOpacity(0.4)),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.settings, color: Colors.white),
                              Text(' Profile & settings',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        )
                      ],
                    )),
                Wrap(
                  children: options
                      .map((e) => Container(
                          alignment: Alignment.centerLeft,
                          height: 50.0,
                          width: double.infinity,
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Text(
                            e,
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          )))
                      .toList(),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(-2, -2),
                      color: Colors.black12,
                      blurRadius: 20.0)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.signal_cellular_alt_sharp,
                    color: Colors.greenAccent),
                const SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "JioFiber",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      "Get JioFiber and enjoy Unlimited data",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.7),
                        shape: BoxShape.circle),
                    child: Transform.rotate(
                      angle: 1.6,
                      child: const Icon(Icons.arrow_forward_ios,
                          size: 10.0, color: Colors.white),
                    ))
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(-2, -2),
                      color: Colors.black12,
                      blurRadius: 20.0)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.health_and_safety, color: Colors.greenAccent),
                const SizedBox(width: 20.0),
                const Text(
                  "Health",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                const Spacer(),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Text('NEW',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700))),
                Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.7),
                        shape: BoxShape.circle),
                    child: Transform.rotate(
                      angle: 1.6,
                      child: const Icon(Icons.arrow_forward_ios,
                          size: 10.0, color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
