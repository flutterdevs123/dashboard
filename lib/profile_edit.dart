import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileEdit> {
  String userName = "Loading...";
  String userEmail = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: AppBar(

            titleSpacing: 12,

            title: Column(

              children: [


                Text(userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Color(0xDD2F80ED),),),

              ],
            ),

          ),

        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 23,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
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
                                image: DecorationImage(image: AssetImage("assets/images/img.png"),fit: BoxFit.cover)
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
                                child: IconButton(onPressed: () {  }, icon: Icon(Icons.edit,color: Colors.white,size: 18)),
                          ))
                        ],

                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Mr. Ahmed",style: TextStyle(fontWeight: FontWeight(600),fontSize: 22),),
                    Text("+92 300 1234567",style: TextStyle(fontWeight: FontWeight(500),fontSize: 16,color: Colors.grey),),
                    Text("ahmed@email.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blue),),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.person_outline,color: Colors.blue,size: 30,),
                SizedBox(width: 5,),
                Text("Basic Information",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 23))
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,


                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 8,
                        offset: Offset(0, 3)
                    )
                  ]
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("FULL NAME",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey)),
                        SizedBox(height: 5,),
                        Text("Arslan Hamid",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),

                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.blue,))
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,


                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 8,
                        offset: Offset(0, 3)
                    )
                  ]
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("FULL NAME",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey)),
                        SizedBox(height: 5,),
                        Text("Arslan Hamid",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),

                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.blue,))
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,


                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 8,
                        offset: Offset(0, 3)
                    )
                  ]
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gender",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey)),
                        SizedBox(height: 5,),
                        Text("Male",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),

                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.blue,))
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
