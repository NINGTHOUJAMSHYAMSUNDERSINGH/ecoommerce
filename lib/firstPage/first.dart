import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
        
      //   // actions: [IconButton(onPressed:() {
      //   //   //showSearch(context: context, delegate: CustomSearchdelegate());
      //   // }, icon: const Icon(Icons.search))],
      // ),
      
      decoration: BoxDecoration(
        
        color: Color.fromARGB(255, 208, 138, 138),
        borderRadius: BorderRadius.circular(0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 0.0,
            color: Colors.black87.withOpacity(0.05),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Padding(

            padding: const EdgeInsets.only(left: 9),

            child:Icon(Icons.home,size: 50),
            //  Text(
            //   "Home",
              
            //   style: TextStyle(color: Color(0xff9B9B9B), fontSize: 17),
            // ),
            
          ),
          Spacer(),
          Icon(Icons.search),
        ],
      ),
    );
  }
}
