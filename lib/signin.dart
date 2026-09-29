import 'package:flutter/material.dart';
import 'package:practice_1/signup.dart';

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
                Text("Email",style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),),
                SizedBox(height: 10,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Arslan",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
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
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),),
                SizedBox(height: 10,),
                TextFormField(
                  controller: passwordController,
                  obscureText: isObscured,
                  decoration: InputDecoration(
                      hintText: "********",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
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
                    else if(!value.contains("123456")){
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
                SizedBox(height: 30,),

                Row(
                  children: [
                    Checkbox(value: isChecked, onChanged: (bool? newValue){
                      setState(() {
                        isChecked = newValue ?? false;
                      });
                    }),
                    SizedBox(width: 10,),
                    Text("Keep me Signed in")
                  ],
                ),
                SizedBox(height: 30,),
                Center(
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
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
                    }, child: Text("Sign up here",style: TextStyle(fontWeight: FontWeight.bold),))
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
