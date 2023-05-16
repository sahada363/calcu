import 'package:flutter/material.dart';
class calcu extends StatefulWidget {
  const calcu({Key? key}) : super(key: key);

  @override
  State<calcu> createState() => _calcuState();
}

class _calcuState extends State<calcu> {
  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double result=0;


  void Calculate()
  {
    double heightcm=double.parse(height.text);
    double weightd=double.parse(weight.text);
    double heightm=heightcm/100;
    double heightsquare=heightm*heightm;
    result=weightd/heightsquare;
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Center(
        child: Text('BMI Calculator'),
      ),backgroundColor: Colors.yellow,),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
             controller:height ,
              decoration: InputDecoration(
                fillColor: Colors.pinkAccent, filled: true,
                hintText: 'height',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller:weight,
              decoration: InputDecoration(
                fillColor: Colors.pinkAccent, filled: true,
                hintText: 'weight',
              ),),
            SizedBox(
              height: 20,
            ),
            TextButton(style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){Calculate();} ,
                child: Text('Calculate', style: TextStyle(color: Colors.white70),)),
                SizedBox(
                  height: 20,
                ),
            Text(result==null?"Enter the values":"${result.toStringAsFixed(2)}"),

          ],),
      ),

    );
  }
}
