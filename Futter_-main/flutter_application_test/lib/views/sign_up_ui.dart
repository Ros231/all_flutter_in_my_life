// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp ({super.key});

  @override
  State<SignUp > createState() => _SignUpUiState();
}

class _SignUpUiState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 35,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/img/logo.png',
                      height: 200,
                      width: 200,
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Get On Board! ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                   Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " create your proflie to start your journey ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        
                      ),
                      prefixIcon: Icon(Icons.person_2_outlined,
                      color: Colors.grey,
                      ),
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                   TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        
                      ),
                      prefixIcon: Icon(Icons.mail_outline,
                      color: Colors.grey,
                      ),
                      hintText: "Emali",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      )
                    ),
                  ),

                    SizedBox(
                    height: 10,
                  ),

                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        
                      ),
                      prefixIcon: Icon(Icons.phone,
                      color: Colors.grey,
                      ),
                      hintText: "Phone",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                   TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),

                      prefixIcon: Icon(FontAwesomeIcons.fingerprint,
                      color: Colors.grey,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      
                      )
                    ),
                    
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  ElevatedButton(
                    onPressed: () {
                    },

                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15)
                    ),
                  ),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  Text(
                    "OR"
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  OutlinedButton(
                  onPressed: () {
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icon/googlelogo.png",
                          height: 20,
                          width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      Text(
                        "Sign in with google",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15)
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?s"
                    ),
                    TextButton(
                      onPressed:(){},
                     child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                     ))
                  ],
                )

                ],
            ),
          ),
        ),
      ),
    );
  }
}
