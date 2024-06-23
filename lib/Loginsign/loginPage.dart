import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: LoginPage(),));
// }

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 156, 180, 200),
      appBar:AppBar(
        backgroundColor: Color.fromARGB(255, 4, 99, 177),
        title: Center(child: Text("Snow Ball")),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/icons/cold_ice.png",height: 100,width: 100,),
              Text("SnowFalls rouses Your inner child To dream and play once more",style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 10, 52, 86)),),
             
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    
                    hintText: "Username",
                    labelText: "Username",
                    helperText: "Username must be an Email ",
                    
                    //prefixIcon: Icon(Icons.account_circle) ,
                    suffixIcon: Icon(Icons.account_circle) ,


                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    )
                  ),
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    helperText: "Password must contain 6 characters ",
                    //prefixIcon: Icon(Icons.account_circle) ,
                    suffixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    )
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (){}, 
                child: Text("Login",style: TextStyle(fontSize: 15,),)),
              TextButton(onPressed: (){}, 
              child: Text("Not a User? SignUp Here...."))
            ],
          ),
        ),
    );
  }
  
}