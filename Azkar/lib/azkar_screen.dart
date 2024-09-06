import 'package:azkar/custom_button.dart';
import 'package:azkar/custom_text.dart';
import 'package:azkar/zikr.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatelessWidget {
   AzkarScreen ({super.key});
  List<Widget> items=[
    zekrItem(zekrTitle: "سبحان الله",),
    zekrItem(zekrTitle: "الحمد لله",ZekrColor: Colors.amber,),
    zekrItem(zekrTitle: "الله اكبر",ZekrColor: Colors.green),
    zekrItem(zekrTitle: "لا اله الا الله",ZekrColor:Colors.brown),
    zekrItem(zekrTitle: "لاحول ولا قوة الا بالله",ZekrColor: Colors.deepOrange,)
  ];

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,

      ),
        body: SafeArea(
          child: Center(
            child: PageView(
              children: items,
            ),
          ),),

      );
  }
}
int increaseCounter(int counter){
  counter+=1;
  return counter;

}

class zekrItem extends StatefulWidget {
   zekrItem({super.key,required this.zekrTitle,this.counter=0,this.ZekrColor=Colors.cyan});
   String zekrTitle;
   int counter;
   Color? ZekrColor;


  @override
  State<zekrItem> createState() => _zekrItemState();
}

class _zekrItemState extends State<zekrItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                zikr(title: widget.zekrTitle,counter: widget.counter,backgroundColor: widget.ZekrColor),
                SizedBox(height: 15,),
                CustomElevatedButton(
                  FontSize: 25,
                  buttonInsets: EdgeInsets.all(50),
                  onPressedFunction: (){
                
                  setState(() {
                    widget.counter=increaseCounter(this.widget.counter);
                  });
                  print(widget.counter);
                },
                  buttonTitle: "+",buttonWidth: double.infinity,),
              ],
            ),
          ),
          CustomElevatedButton(
            FontSize: 20,

            buttonInsets: EdgeInsets.all(15),
            onPressedFunction: (){

              setState(() {
                widget.counter=0;
              });
              print(widget.counter);
            },
            buttonTitle: "reset",buttonWidth: double.infinity,)



        ],
      ),
    );
  }
}

