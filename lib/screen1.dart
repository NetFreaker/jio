import 'package:flutter/material.dart';
import 'package:jio/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          elevation: 0.0,
          leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Screen2())))),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                  height: size.height * 0.5,
                  width: size.width,
                  color: Colors.pinkAccent,
                  alignment: Alignment.topLeft,
                ),
                Container(
                  height: size.height * 0.5,
                  width: size.width,
                  color: Colors.white,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 14.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 10.0),
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
                      const Text(
                        "Manage your Jio account & never miss an update",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 30.0),
                        padding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                        child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration.collapsed(
                              hintText: "Enter mobile number",
                            )),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blue.shade900),
                        child: const Text('Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: size.width * 0.1,
                              child: const Divider(
                                thickness: 1.0,
                                color: Colors.grey,
                              ),
                            ),
                            const Text(' or '),
                            SizedBox(
                              width: size.width * 0.1,
                              child: const Divider(
                                thickness: 1.0,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.qr_code, color: Colors.blue.shade900),
                          Text(' Login with QR',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500)),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 14.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 10.0),
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
                    children: [
                      const Text(
                        "Not a Jio user ?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                      Container(
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.7),
                              shape: BoxShape.circle),
                          child: const Icon(Icons.arrow_forward_ios,
                              size: 10.0, color: Colors.white))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
