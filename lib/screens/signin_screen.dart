import 'package:chalenge/widges/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SingUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.grey.shade700,
        iconTheme: IconThemeData(color: Colors.grey.shade800,),
      ),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Let's Get Started!",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Create an account to Q Allure to get all features',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        defaultmaterialtextfield(
                            hinttext: 'Name',
                            textinput: TextInputType.text,
                            icon: Icons.person_outline),
                        SizedBox(
                          height: 24,
                        ),
                        defaultmaterialtextfield(
                            hinttext: 'Email',
                            textinput: TextInputType.emailAddress,
                            icon: Icons.email_outlined),
                        SizedBox(
                          height: 24,
                        ),
                        defaultmaterialtextfield(
                            hinttext: 'phone',
                            textinput: TextInputType.phone,
                            icon: Icons.phone),
                        SizedBox(
                          height: 24,
                        ),
                        defaultmaterialtextfield(
                            hinttext: 'Password',
                            textinput: TextInputType.visiblePassword,
                            icon: Icons.lock),
                        SizedBox(
                          height: 24,
                        ),
                        defaultmaterialtextfield(
                            hinttext: 'Confirm Password',
                            textinput: TextInputType.visiblePassword,
                            icon: Icons.lock_outline),
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('CREATE')),

                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()),);},
                        child: Text(
                          'Login here',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
