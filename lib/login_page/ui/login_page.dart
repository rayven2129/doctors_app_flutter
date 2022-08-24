import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_app_doctor/login_page/function/google_sign_in.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Sign in to Doctors")),
        resizeToAvoidBottomInset: false,
        body: const MyStatefulWidget(),
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
  //TextEditingController nameController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Logo',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                //controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile number or Username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 80,
              child: TextFormField(
                obscureText: passenable,
                //controller: nameController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passenable) {
                              passenable = false;
                            } else {
                              passenable = true;
                            }
                          });
                        },
                        icon: Icon(passenable == true
                            ? FontAwesomeIcons.solidEye
                            : FontAwesomeIcons.solidEyeSlash))),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              elevation: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: MaterialButton(
                      elevation: 10,
                      onPressed: () {
                        google(context);
                        super.mounted;
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/google_logo.png'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text("Sign in Using Google Account"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: 40,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //  Navigator.push(
                    //    context,
                    //    MaterialPageRoute(
                    //       builder: (context) => const Signup()));
                  },
                )
              ],
            ),
          ],
        ));
  }
}
