import 'package:chalenge/constants/images.dart';
import 'package:chalenge/screens/signin_screen.dart';
import 'package:chalenge/widges/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    print(screenHeight);
    print(screenWidth);
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        AppImage.loginImage,
                        height: screenHeight * 0.2,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Welcome back!',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Log in to your existant account of Q Allure',
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
                            hinttext: 'Email',
                            textinput: TextInputType.emailAddress,
                            icon: Icons.person_outline),
                        SizedBox(
                          height: 24,
                        ),
                        defaultmaterialtextfield(
                            hinttext: 'Password',
                            textinput: TextInputType.visiblePassword,
                            icon: Icons.lock_outline),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  defaultelevatebutton(text: 'LOG IN'),
                  SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Or connect using',
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/facebook.png',
                                height: 17,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text('Facebook'),
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.blue.shade700),
                            foregroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.white),
                            padding: MaterialStateProperty.resolveWith(
                              (states) => EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 10),
                            ),
                            shape: MaterialStateProperty.resolveWith(
                              (states) => RoundedRectangleBorder(
                                side: BorderSide.none,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 150,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google.png',
                                height: 17,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text('Google'),
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.redAccent),
                            foregroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.white),
                            padding: MaterialStateProperty.resolveWith(
                              (states) => EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 10),
                            ),
                            shape: MaterialStateProperty.resolveWith(
                              (states) => RoundedRectangleBorder(
                                side: BorderSide.none,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12 ,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold),),
                      TextButton(

                        onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=> SingUpPage())),
                        child: Text(
                          'Sing Up',
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

  textHeadingBloc() {
    return Column(
      children: [
        Text(
          'Welcome back!',
          style: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'Log in to your existant account of Q Allure',
          style: GoogleFonts.lato(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  imageBloc() {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.loginImage),
        ),
      ),
    );
  }
}
