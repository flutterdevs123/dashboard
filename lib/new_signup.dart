import 'package:flutter/material.dart';
import 'package:practice_1/home_screen.dart';
import 'package:practice_1/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewSignup extends StatefulWidget {
  const NewSignup({super.key});

  @override
  State<NewSignup> createState() => _NewSignupState();
}

class _NewSignupState extends State<NewSignup> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();


  bool isChecked = true;
  bool iisChecked = true;
   bool isCheckedBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Signup",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              // 1. Full Name Section
              const Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Arslan",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),

                  ),
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "name not be empty";
                  }
                  else if(value.length < 5){
                    return "name must be 5 char long";
                    
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              // 2. Email Section
              const Text(
                "Email Address",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "ars123@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
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
              const SizedBox(height: 24),

              // 3. Password Section
              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                obscureText : isChecked,
                controller: passwordController,
                decoration: InputDecoration(

                  hintText: "********",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon:IconButton(onPressed: (){
                    setState(() {
                      isChecked = !isChecked;
                    });
                  }, icon: Icon(isChecked ? Icons.visibility_off : Icons.visibility))
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "email not be empty";
                  }
                  else if(value.length<6){
                    return "Password must be more than 6 char";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              // 4. Confirm Password Section
              const Text(
                "Confirm Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                obscureText: iisChecked,
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  hintText: "********",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                    suffixIcon:IconButton(onPressed: (){
                      setState(() {
                        iisChecked = !iisChecked;
                      });
                    }, icon: Icon(iisChecked ? Icons.visibility_off : Icons.visibility))
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
              const SizedBox(height: 30),

              // 5. Checkbox Section
              Row(
                children: [
                  Checkbox(

                    value: isCheckedBox,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isCheckedBox = !isCheckedBox;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "By Creating an Account, i accept Hiring Hub \n terms of Use and Privacy Policy",
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // 6. Signup Button
              Center(
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      // Aap yahan apna click logic/navigation add kar sakte hain

                      if(passwordController.text != confirmPasswordController.text){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password did not match")));
                      }
                      else if(!isCheckedBox){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Must check the check box")));
                      }
                      else if(_formKey.currentState!.validate()){
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setString("currentUserName", nameController.text);
                        await prefs.setString("currentUserEmail", emailController.text);
                        Signup.registeredEmails.add(emailController.text);
                        Signup.registeredPasswords.add(passwordController.text);

                        await prefs.setStringList("savedEmails",  Signup.registeredEmails);
                        await prefs.setStringList("savedPasswords",  Signup.registeredPasswords);



                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                      }


                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // 7. Navigation Option
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have an Account?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 2),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in here",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // 8. Social Login
              const Center(
                child: Text(
                  "or sign in with",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/google_image.png",
                      height: 24,
                      width: 24,
                    ),
                    label: const Text(
                      "Sign up with Google",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}