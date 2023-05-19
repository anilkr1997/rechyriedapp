import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/DasBoardRdss.dart';


class LoginPage extends StatefulWidget {
  const LoginPage() : super();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController name =TextEditingController();
  TextEditingController adderss =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login")
      ),
      backgroundColor: const  Color(0xFFF0EFEF),
      body: Center(

        child: Container(

          child: Column(

            children: [

              Container(

                child: Image(
                  image: AssetImage('images/login_logo.png'),
                ),
              ),

              Container(

                margin: EdgeInsets.all(10.0),

                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      labelText: 'Full Name'
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),

                child: TextField(
                  controller: adderss,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      labelText: 'Address'
                  ),

                ),
              ),
              Container(
                height: 50,
                width: (MediaQuery.of(context).size.width),
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),

                  color: Colors.blue[200],
                ),
                child: TextButton(

                  child: Text("Submit"
                  ,style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20,),)
                  ,onPressed: (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return DasBoardRdss();
                        }));

                    // if(validation()){
                    //   name.clear();
                    //         adderss.clear();
                    //
                    //       }else{
                    //
                    // }
                  });
                },
                    style: ButtonStyle()
                ),


              )

            ],
          ),
        ),
      ),
    );

  }

  bool validation() {
    if(name.value.text.isEmpty){
      return false;
    }else if(adderss.value.text.isEmpty){
      return false;
    }
    return true;
  }

}

