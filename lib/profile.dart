import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:practice_1/home_screen.dart';
import 'package:practice_1/profile_edit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  //variable for select date
  DateTime selectDate = DateTime.now();

  String userName = "Loading...";

  String userEmail = '';
  Uint8List? selectedImageBytes;
  final ImagePicker  _picker = ImagePicker();
  void initState(){
    super.initState();
    loadUserName();


  }

  Future <void> loadUserName() async{

    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString('currentUserName') ?? "User";
      userEmail = prefs.getString('currentUserEmail') ?? "Email";
    });
  }
  Future<void> selectImage(ImageSource source)async {

    final XFile? image = await _picker.pickImage(source : source);
    if(image == null){
      return;

    }
    var bytes = await image.readAsBytes();
    setState(() {
      selectedImageBytes = bytes;

    });
Navigator.pop(context);

  }
  void showImageSourceDialog(){
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return SafeArea(child: Wrap(
        children: [
          InkWell(
            onTap: (){
              selectImage(ImageSource.gallery);
            },
            child: Row(
              children: [
                Icon(Icons.photo_library,size: 30,color: Colors.blue,),
                SizedBox(width: 16,),
                Text("Select from Gallery",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),)
              ],
            ),
          ),
          InkWell(
            onTap: (){
              selectImage(ImageSource.camera);
            },
            child: Row(
              children: [
                Icon(Icons.camera_alt,size: 30,color: Colors.blue,),
              SizedBox(width: 16,),
              Text("Use Camera",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),)
              ],
            ),
          )
        ],
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    ImageProvider profileImage;
    if(selectedImageBytes != null){
           profileImage = MemoryImage(selectedImageBytes!);
    }
    else{
      profileImage = AssetImage("assets/images/img.png");
    }
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: AppBar(

                titleSpacing: 12,
                leading: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage("assets/images/img_1.png"),
                      child: Icon(Icons.eighteen_mp)),
                ),
                title: Column(

                  children: [


                    Text(userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Color(0xDD2F80ED),),),

                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 26.0),
                    child: Container(

                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0x2F80EDF5),
                        ),
                        child: Icon(Icons.notifications_none,color: Colors.blue,)),
                  )
                ],
              ),
    )
        ),
      body:Card(
        elevation: 14,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: profileImage,fit: BoxFit.cover)
                      ),

                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration:   BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                              border: Border.all(width: 2,color: Colors.blue)
                          ),
                          child: IconButton(onPressed: () {
                            showImageSourceDialog();
                          }, icon: Icon(Icons.edit,color: Colors.white,size: 18)),
                        ))
                  ],

                ),
              ),
              SizedBox(height: 20,),
              Text(userName,style: TextStyle(fontWeight: FontWeight(600),fontSize: 22),),
              Text("+92 300 1234567",style: TextStyle(fontWeight: FontWeight(500),fontSize: 16,color: Colors.grey),),
              Text(userEmail,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blue),),
      SizedBox(height: 30,),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black.withOpacity(0.15)
            )
          ],
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),

                    ),
                    child: Icon(Icons.person_outline,color: Colors.blue,),

                  ),
                  SizedBox(width: 8,),
                  Text("Personal Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(width: 140,),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileEdit()));
                  }, icon: Icon(Icons.navigate_next_outlined))
                ],
              ),
              SizedBox(height: 16,),
              Divider(
                height: 5,
                thickness: 1,
                color: Colors.white,
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),

                    ),
                    child: Icon(Icons.alarm,color: Colors.blue,),

                  ),
                  SizedBox(width: 8,),
                  Text("Medicines Reminder",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black87),),
                  SizedBox(width: 110,),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  }, icon: Icon(Icons.navigate_next_outlined))
                ],
              ),
              SizedBox(height: 16,),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.white,
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),

                    ),
                    child: Icon(Icons.verified_user_outlined,color: Colors.blue,),

                  ),
                  SizedBox(width: 8,),
                  Text("Insurance Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(width: 130,),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  }, icon: Icon(Icons.navigate_next_outlined))
                ],
              ),
              SizedBox(height: 16,),
              Divider(
                height: 1,
                thickness: 4,
                color: Colors.white,
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(13),

                    ),
                    child: Icon(Icons.medical_services_outlined,color: Colors.red,),

                  ),
                  SizedBox(width: 8,),
                  Text("Emergency",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(width: 173,),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  }, icon: Icon(Icons.navigate_next_outlined))
                ],
              ),

            ],
          ),
        ),
      ),
       ])
         )
          )
           );
  }
}
