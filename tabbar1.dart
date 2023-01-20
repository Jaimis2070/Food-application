import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabbarone extends StatefulWidget {
  const Tabbarone({Key? key}) : super(key: key);

  @override
  State<Tabbarone> createState() => _TabbaroneState();
}

class _TabbaroneState extends State<Tabbarone> {
  final _formkey = GlobalKey<FormState>();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: _formkey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)),
                      labelText: "Email"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                      return "Enter Correct Name";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)),
                      labelText: "Password"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                      return " Wrong Password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xffbacf8774a)),
                child: Text("LogIn",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontSize: 14))),
              ),
              const SizedBox(height: 14),
              Container(
                child: Text("Forgot Password",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontSize: 14),
                        color: const Color(0xffFA4A0C))),
              ),
              const SizedBox(
                height: 14,
                child: (Text("or")),
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.facebook),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Login to facebook")
                      ],
                    )),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.chrome_reader_mode_rounded,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Login to facebook")
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
