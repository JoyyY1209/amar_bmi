import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {

  TextEditingController age=TextEditingController();
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  TextEditingController gender=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Container(
              height: 80,
              width: 250,
              decoration:BoxDecoration(
                color: Colors.green[400],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              ),

              child: Center(
                child: Text("Amar BMA",
                  style: GoogleFonts.dancingScript(fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
              ),
            ),
            SizedBox(height: 40,),

            //age
            Row(

              children: [

                SvgPicture.asset("assets/icons/date.svg",height: 30,width: 30,),
                SizedBox(width: 5,),
                Text("Age",style: GoogleFonts.teko(fontSize: 20),textAlign: TextAlign.left,),
              ],
            ),
            SizedBox(

              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 3)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 2)),
                  //labelText: "Age",
                  hintText: "Enter your age : ",
                  //prefixIcon: Icon(Icons.calendar_month),
                ),

              ),
            ),
            SizedBox(height: 40),

            //height
            Row(

              children: [

                //Icon(Icons.,color: Colors.green,),

                SvgPicture.asset("assets/icons/height.svg",height: 30,width: 30,),
                SizedBox(width: 5,),
                Text("Height",style: GoogleFonts.teko(fontSize: 20),textAlign: TextAlign.left,),
              ],
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(

                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 3)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 2)),
                      labelText: "Feet",
                      //hintText: "Enter your age : ",
                      //prefixIcon: Icon(Icons.le),
                    ),

                  ),
                ),
                SizedBox(width: 10),
                SizedBox(

                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 3)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 2)),
                      labelText: "Inch",
                      //hintText: "Enter your age : ",
                      //prefixIcon: Icon(Icons.calendar_month),
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),

            //Weight
            Row(
              children: [
                SvgPicture.asset("assets/icons/weight.svg",height: 30,width: 30,),
                SizedBox(width: 5),
                Text("Weight",style: GoogleFonts.teko(fontSize: 20),)
              ],
            ),
            SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 3)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 2)),
                  hintText: "Enter Weight in Kg",
                ),
              ),
            ),
            SizedBox(height: 40,),

            //Gender
            Row(
              children: [
                SvgPicture.asset("assets/icons/gender.svg",height: 30,width: 30,),
                SizedBox(width: 5,),
                Text("Gender",style: GoogleFonts.teko(fontSize: 20),)
              ],
            ),
            SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 3)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 2)),
                  hintText: "Enter Weight in Kg",
                ),
              ),
            ),
            SizedBox(height: 40,),


           //submit
            SizedBox(
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: (){},
                child: Text("Submit",style: GoogleFonts.teko(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),),
            ),





          ],
        ),
      ),
    );
  }
}