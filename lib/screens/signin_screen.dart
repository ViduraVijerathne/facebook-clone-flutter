import 'package:facebook/constans/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const routeName = '/signin_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

          ),

          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,


                children: [
                  Image.network('https://hindubabynames.info/downloads/wp-content/themes/hbn_download/download/social-media/facebook-logo.png',
                    width: 200,
                    height: 200,
                  ),

                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        // textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Mobile',
                        ),
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                        onChanged: (text) {
                          // Do something with the text input
                        },
                      ),
                    )
                  ),
                  SizedBox(height:25),
                  Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          obscureText: true ,
                          // textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                          onChanged: (text) {
                            // Do something with the text input
                          },
                        ),
                      )
                  ),
                  SizedBox(height:25),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.buttonBackground,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      shadowColor: Colors.grey,
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      // Add gradient background
                      // badk
                      // gradient: LinearGradient(
                      //   colors: [Colors.blue, Colors.lightBlue],
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      // ),
                    ),
                    onPressed: () {
                      
                    },
                    child: Text('Login'),
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
