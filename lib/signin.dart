import 'package:flutter/material.dart';
import 'package:practice_1/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  bool isObscured = true;



  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text("Login",
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
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Text("Email Address",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),),
                SizedBox(height: 5,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "arslan123@.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                    validator: (value){
                    if(value == null || value.isEmpty){
                      return "email Zaroori ha";
                    }
                    else if(!value.contains("@") || !value.contains(".com")){
                      return " @ and .com bhi zaroori ha";
                    }
                    return null;
                    },
                ),

                SizedBox(height: 30,),
                Text("Password",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  color: Colors.blue
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
                      return "Passwor khali nahi ho sakta";
                    }
                    else if(value.length<6){
                      return "password must between 1-6";
                    }
                    return null;
                  },
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.blue),)),
                  ],
                ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Checkbox(value: isChecked, onChanged: (bool? newValue){
                      setState(() {
                        isChecked = newValue ?? false;
                      });
                    }),

                    Text("Keep me Signed in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                    ),)
                  ],
                ),
                SizedBox(height: 10,),
                Center(
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () async {
                          if(_formKey.currentState!.validate()){

                            if(!isChecked){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Check the 'keep me Signed in'")));
                              return;
                            }
                            String enteredEmail = emailController.text;
                            String enteredPassword = passwordController.text;

                            //Shared Preference ko use karna

                            final prefs = await SharedPreferences.getInstance();
                            List<String> savedEmail = prefs.getStringList('savedEmails',) ?? [];
                            List<String> savedPassword = prefs.getStringList('savedPasswords') ?? [];

                            int index = savedEmail.indexOf(enteredEmail);
                            if(index != -1 &&savedPassword[index] == enteredPassword){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                            }


                            else{
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email ya Password Galat ha ")));
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(

                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                        child: Text("Login",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),)),
                  ),
                ),
                SizedBox(height: 40,),
                Center(child: Text("or sign in with",style: TextStyle(fontWeight: FontWeight.bold),)),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(onPressed: (){},
                        icon : Image.asset("assets/images/google_image.png",height: 24,width: 24,),
                        label: Text("Sign in with Google",style: TextStyle(fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )),),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don`t have an Account?",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 2,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                    }, child: Text("Sign up here",style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,
                    decorationColor: Colors.blue),))
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
