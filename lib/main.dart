import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    home: Myclass(),
  ));
}
class Myclass extends StatefulWidget {
  const Myclass({Key? key}) : super(key: key);
  @override
  State<Myclass> createState() => _MyclassState();
}
class _MyclassState extends State<Myclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
        color:Colors.black),
        title: Text('create new account',
        style:TextStyle(color:Colors.black,
        ),
        ),
          backgroundColor: Colors.white),
      body: Center(
        child: ElevatedButton(
          child: Text('popup'),
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return Container(
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  title: Container(
                    padding: EdgeInsets.all(15.0),
                    height: 400,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget> [
                       Image.asset('assets/images/congratulations.png',width: 200,),
                     Text(
                          'Congratulations!', style: TextStyle(fontSize: 22,color:Colors.deepOrangeAccent)),

                        Text(
                            'Your account is ready to use.You will be redirected to the Home page in a'
                                '            few seconds..',
                      textAlign: TextAlign.center,
                      maxLines:3,
                      overflow: TextOverflow.ellipsis,
                      style:TextStyle(fontSize: 15),
                        ),
                        Image.asset('assets/images/Spinner-3.gif'),

                      ],
                    ),
                  ),
                ),
              );
            });
          },
        ),
      ),

    );
  }
}



