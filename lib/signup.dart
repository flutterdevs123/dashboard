import 'package:flutter/material.dart';
import 'package:practice_1/home_screen.dart';
import 'package:practice_1/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bottom_nav_bar.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  static List<String> registeredEmails = [];
  static List <String> registeredPasswords = [];

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
final _formKey = GlobalKey<FormState>();


  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isObscured = true;
  bool isObscureChecked = false;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text("Signup",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),

                Text("Full Name",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),),
                SizedBox(height: 5,),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Arslan",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "name zaroori ha";
                    }
                    else if(!value.contains("ars")){
                      return "name must contain minimum 3 chars";
                    }
                      return null;
                  },
                ),
                SizedBox(height: 24,),
                Text("Email Address",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,color: Colors.blue
                ),),
                SizedBox(height: 5,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "ars123@gmail.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "email not be empty";
                    }
                    else if(!value.contains("@") || !value.contains(".com")){
                      return "email must contain @ and .com";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24,),
                Text("Password",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,color: Colors.blue
                ),),
                SizedBox(height: 5,),
                TextFormField(
                  controller: passwordController,
                  obscureText: isObscured,
                  decoration: InputDecoration(
                      hintText: "********",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                    suffixIcon: IconButton(
                       onPressed: () { setState(() {

                         isObscured = !isObscured;
                       }); }, icon:Icon(isObscured ? Icons.visibility_off : Icons.visibility,),

                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "password not be empty";
                    }
                    else if(value.length < 6){
                      return "password must be between 1-6";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24,),
                Text("Confirm Password",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,color: Colors.blue
                ),),
                SizedBox(height: 5,),
                TextFormField(
                  controller: confirmPasswordController,
                  obscureText: isObscureChecked,
                  decoration: InputDecoration(
                      hintText: "********",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                    suffixIcon: IconButton(
                      onPressed: () { setState(() {

                        isObscureChecked= !isObscureChecked;
                      }); }, icon:Icon(isObscureChecked ? Icons.visibility_off : Icons.visibility,),

                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "password not be empty";
                    }
                    else if(value.length < 6){
                      return "password must be between 1-6";
                    }
                    return null;
                  },

                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Checkbox(value: isChecked, onChanged: (bool? newValue){
                      setState(() {
                        isChecked = newValue ?? false;
                      });
                    }),
                    SizedBox(width: 10,),
                    Text("By Creating an Account, i accept Hiring Hub \n terms of Use and Privacy Policy")
                  ],
                ),
                SizedBox(height: 16,),
                Center(
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () async {
                          if(!isChecked){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Check the Check box")));
                            return;
                          }
                          else if(passwordController.text != confirmPasswordController.text){

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password did not match")));
                            return;
                          }

                          else if(_formKey.currentState!.validate()){

                            final prefs = await SharedPreferences.getInstance();
                            await prefs.setString('currentUserName', nameController.text);
                            await prefs.setString('currentUserEmail', emailController.text);
                            Signup.registeredEmails.add(emailController.text);
                            Signup.registeredPasswords.add(passwordController.text);

                            //Shared preference is used

                            await prefs.setStringList('savedEmails', Signup.registeredEmails);
                            await prefs.setStringList('savedPasswords', Signup.registeredPasswords);
                            await prefs.setBool('isLoggedIn', true);

                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home1Screen()));



                          }


                        },
                        style: ElevatedButton.styleFrom(

                            backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(12)
                          )
                        ),
                        child: Text("Signup",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),)),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an Account?",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 2,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin()));
                    }, child: Text("Sign in here",style: TextStyle(
                      fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationColor: Colors.blue
                    ),))
                  ],
                ),
                SizedBox(height: 30,),
                Center(child: Text("or sign in with",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(onPressed: (){},
                      icon : Image.asset("assets/images/google_image.png",height: 24,width: 24,),
                      label: Text("Sign up with Google",style: TextStyle(fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      )),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
