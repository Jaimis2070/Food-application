import 'package:flutter/material.dart';
import 'package:foods/pages/Page6.dart';
import 'package:google_fonts/google_fonts.dart';

class TabbarTwo extends StatefulWidget {
  const TabbarTwo({Key? key}) : super(key: key);

  @override
  State<TabbarTwo> createState() => _TabbarTwoState();
}

class _TabbarTwoState extends State<TabbarTwo> with TickerProviderStateMixin {
  @override
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String name = "_Email, _name,_password";
  void validate() {
    if (_formkey.currentState!.validate()) {
      print("ok");
    } else {
      print("error");
    }
  }

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _Confirmcontroller = TextEditingController();
  @override
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: Row(
                children: [
                  Text(
                    "Register",
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(fontSize: 30),
                        color: const Color(0xffF8774A)),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.face_outlined)),
                  const SizedBox(
                    height: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chrome_reader_mode_rounded)),
                ],
              ),
            ),
            Container(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Mail id";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return "Enter Password";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      controller: _Confirmcontroller,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelText: "Confirm Password",
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty ||
                            !RegExp("r^[A-z a-z]").hasMatch(value)) {
                          return "confirm Password";
                        }
                        if (_controller != _Confirmcontroller) {
                          return "Password does not match";
                        } else {
                          return null;
                        }
                      })
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const));
                },
                child: const Text("data"))
          ],
        ),
      ),
    );
  }
}
