import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                  Image(
                    image: AssetImage('assets/logo.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Text(
                    'Point It!',
                    style: TextStyle(
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Loyalty Rewards!',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Text('Welcome',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 95, 177, 98),
                      )),
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
            //   child: TextFormField(
            //     decoration: const InputDecoration(
            //       border: UnderlineInputBorder(
            //           borderSide: BorderSide(
            //               color: Colors.green,
            //               width: 2.5,
            //               style: BorderStyle.solid)),
            //       labelText: 'Email or Mobile no.',
            //     ),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email or Mobile no.',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.green,
                        width: 5),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.green,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.green,
                        width: 5),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.green,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
              ),
            ),

            // Container(
            //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //   child: TextField(
            //     obscureText: true,
            //     // controller: passwordController,
            //     decoration: const InputDecoration(
            //       border: OutlineInputBorder(),
            //       labelText: 'Password',
            //     ),
            //   ),
            // ),
            TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.green),
                  ),
                )),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.green, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: const StadiumBorder(),
                  side: const BorderSide(width: 3, color: Colors.green),
                ),
                onPressed: () {
                  // print(nameController.text);
                  // print(passwordController.text);
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.green, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: const StadiumBorder(),
                  side: const BorderSide(width: 3, color: Colors.green),
                ),
                onPressed: () {
                  // print(nameController.text);
                  // print(passwordController.text);
                },
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.fromLTRB(
                  10, 0, 10, 0), //apply paddig to all four sides
              child: Text(
                "By continuing, you agree with Terms and Conditions and Privacy Policy, Community Guidelines.",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ));
  }
}




// Row(
//               children: <Widget>[
//                 Text('Does not have account?'),
//                 TextButton(
//                   child: const Text(
//                     'Sign in',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {
//                     //signup screen
//                   },
//                 )
//               ],
//               mainAxisAlignment: MainAxisAlignment.center,
//             ),