import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool passwordvisible = true;
  var w = const Color.fromRGBO(238, 238, 238, 1);
  var b = const Color.fromRGBO(0, 26, 51, 1);
  var b2 = const Color.fromRGBO(0, 51, 102, 1);
  var y = const Color.fromRGBO(255, 246, 143, 1);
  var b3 = const Color.fromRGBO(0, 51, 102, 1);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            foregroundColor: y,
            backgroundColor: b2,
            title: const Text("Sign Up"),
          ),
          body: Container(
            color: w,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(55, 25, 55, 25),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: b2),
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: b2,
                        ),
                        labelText: "First Name",
                        labelStyle: TextStyle(fontSize: 20, color: b2),
                        hintText: "First Name",
                        hintStyle: TextStyle(
                          fontSize: 10,
                          color: b3,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: b),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(55, 25, 55, 25),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: b2),
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: b2,
                        ),
                        labelText: "Last Name",
                        labelStyle: TextStyle(fontSize: 20, color: b2),
                        hintText: "Last Name",
                        hintStyle: TextStyle(fontSize: 10, color: b3),
                      ),
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: b),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(55, 25, 55, 25),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: b2),
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: b2,
                        ),
                        labelText: "E-mail",
                        labelStyle: TextStyle(fontSize: 20, color: b2),
                        hintText: "E-mail",
                        hintStyle: TextStyle(fontSize: 10, color: b3),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: b),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(55, 25, 55, 25),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: b2),
                            borderRadius: BorderRadius.circular(30)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordvisible = !passwordvisible;
                              });
                            },
                            icon: Icon(
                              passwordvisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: b2,
                            )),
                        prefixIcon: Icon(
                          Icons.password,
                          color: b2,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 20, color: b2),
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 10, color: b3),
                      ),
                      obscureText: passwordvisible,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: b),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(55, 25, 55, 25),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixText: "+90  ",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: b2),
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: b2,
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(fontSize: 20, color: b2),
                        hintText: "Phone Number",
                        hintStyle: TextStyle(fontSize: 14, color: b3),
                      ),
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: b),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      child: Text("Sign Up"),
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor: MaterialStatePropertyAll(y),
                          backgroundColor: MaterialStatePropertyAll(b2)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: FloatingActionButton(
            backgroundColor: b,
            child: Icon(
              Icons.dark_mode,
              color: w,
            ),
            onPressed: () {
              setState(() {
                b = b == const Color.fromRGBO(0, 26, 51, 1)
                    ? const Color.fromRGBO(238, 238, 238, 1)
                    : const Color.fromRGBO(0, 26, 51, 1);
                w = w == const Color.fromRGBO(238, 238, 238, 1)
                    ? const Color.fromRGBO(0, 26, 51, 1)
                    : const Color.fromRGBO(238, 238, 238, 1);
                b2 = b2 == const Color.fromRGBO(0, 51, 102, 1)
                    ? const Color.fromRGBO(255, 246, 143, 1)
                    : const Color.fromRGBO(0, 51, 102, 1);
                y = y == const Color.fromRGBO(255, 246, 143, 1)
                    ? const Color.fromRGBO(0, 51, 102, 1)
                    : const Color.fromRGBO(255, 246, 143, 1);
                b3 = b3 == const Color.fromRGBO(0, 51, 102, 1)
                    ? const Color.fromRGBO(238, 238, 238, 1)
                    : const Color.fromRGBO(0, 51, 102, 1);
              });
            },
          ),
        ));
  }
}
