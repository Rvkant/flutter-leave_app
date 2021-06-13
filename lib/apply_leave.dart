import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Apply extends StatefulWidget {
  const Apply({ Key? key }) : super(key: key);

  @override
  _ApplyState createState() => _ApplyState();
}

class _ApplyState extends State<Apply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


appBar: AppBar(title: Text("List of Holidays"),),

      body: SingleChildScrollView(

  child:

      Container(
        

        //height: 300,

        
        //color: Colors.blue,
      margin: EdgeInsets.all(10),
      
      child:
 
   Column(

  children: <Widget>[



    ListTile(
      
   
      
      title: Text(
        "15th August | Sun", 
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Independence Day"),
    )
,
    ListTile(
      
      
      title: Text(
        "10th September | Fri",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Ganesh Chaturthi"),
    )
    ,
    ListTile(
      
      
      title: Text(
        "2nd October | Sat",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Gandhi Jayanti"),
    )
    ,

    ListTile(
      
      
      title: Text(
        "15th October | Fri",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Dussehra"),
    )

,

ListTile(
      
      
      title: Text(
        "4th November | Thur",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Diwali - Laxmi Pujan"),
    )

,

ListTile(
      
      
      title: Text(
        "5th November | Fri",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Bestu Varas / Govardhan Puja"),
    )

,

ListTile(
      
      
      title: Text(
        "6th November | Sat",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Bhaubij / Bhai Bij"),
    )

,




// Container(

//   height: 20,
// width: 395,

//  child: Text("See All Holidays",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),),



// ),

  ],
),
  
      ),
),
    )
    
    
    ;
      
    
  }
}