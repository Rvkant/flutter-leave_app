
// import 'package:assign_app/pages/home_page.dart';
import 'package:assign_app/pages/homepage1.dart';
// import 'package:assign_app/widget/item_widget.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
// import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;



// bool _value = false;
class Date extends StatefulWidget {
  const Date({ Key? key }) : super(key: key);

  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  bool _value = false;

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));


   Future displayDateRangePicker(BuildContext context) async {
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
        context: context,
        initialFirstDate: _startDate,
        initialLastDate: _endDate,
        firstDate: new DateTime(DateTime.now().year - 50),
        lastDate: new DateTime(DateTime.now().year + 50));
    if (picked.length == 2) {
      setState(() {
        _startDate = picked[0];
        _endDate = picked[1];
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
          title: Text('Apply Leave'),
        ),




        body: SingleChildScrollView(
          child:
        
        
        
        Center(
          
            child: Column(
              
              //crossAxisAlignment: CrossAxisAlignment.stretch ,
          mainAxisAlignment: MainAxisAlignment.start,
        
          children: <Widget>[


          Card(
          

            margin: EdgeInsets.fromLTRB(80, 80, 70, 50),

            child:
            Container(
              height: 45,
              width: 390,
              child:
          

            ElevatedButton(
                  

              child: Text("Select Dates"),
              onPressed: () async {
                await displayDateRangePicker(context);
              },
            ),
           ),
          ),



             Card(
                      
            child: 
            Container(


               child: 
               ListTile(
                    title: Text("From Date*",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold) ,),
                    subtitle: Text("${DateFormat('MM/dd/yyyy').format(_startDate).toString()}"),

               ),

            ),
            //margin: EdgeInsets.all(40),
           ),
        
         
           
Card(
                      
            child: 
            Container(

              


               child: 
               ListTile(
                
                    title: Text("To Date*",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    subtitle: Text(" ${DateFormat('MM/dd/yyyy').format(_endDate).toString()}"),

               ),

            ),
           // margin: EdgeInsets.all(40),
           ),

           
     
     

           Card(
                      
            child: 
                Container(

        //height: 300,

        color: Colors.white,
    
      margin: EdgeInsets.all(10),
      
      child:
 
ExpansionTile(

  //iconColor: Colors.white,
   backgroundColor: Colors.white,
    leading: Text("Type of Leave*  (Select one)",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
    
  title: Text("",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue),),
 

  children: <Widget>[



    ListTile(
      
   
      
      title: Text(
        "Paid Leave", 
        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),
      ),
     
    )
,
    ListTile(
      
      
      title: Text(
        "CL/Contingency Leave",
        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),
      ),
     
    )
    ,
    ListTile(
      
      
      title: Text(
        "Sick Leave",
        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),
      ),
     
    )
    ,
 ListTile(
      
      
      title: Text(
        "Work From Home",
        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),
      ),
     
    )
    ,

  ],
),
  
      ),
           // margin: EdgeInsets.all(40),
           ),

           Card(
                      
            child: 
            Container(

              


               child:CheckboxListTile(
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = true;
              });
            },
            title: Text("Apply for Half-Day",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue,)),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
          ),
      
    ),
                     
                     


              //  ListTile(
                
              //       title: 
                  

              //  ),


               

            ),
           // margin: EdgeInsets.all(40),
           
    
Card(
                      
            child: 
          Container(

        //height: 300,

        
        color: Colors.white,
      margin: EdgeInsets.all(10),
      
      child:
 
ExpansionTile(
  //iconColor: Colors.white,
 backgroundColor: Colors.white,
    leading: Text("Type of Reason  (Select one)",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
    title: Text("",style: TextStyle(color: Colors.blue,),textAlign: TextAlign.center,),
 
 

  children: <Widget>[



  
    ListTile(
      
      
      title: Text(
        "Work From Home",
        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),
      ),
      
    )
    ,
    ListTile(
      
      
      title: Text(
        "Family Reason",
        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),
      ),
     
    )
    ,


  ],
),
  
      ),
           
           ),




  Row (

children: <Widget>
[
  
Container(
  
  height: 50,
  width: 150,
  color: Colors.transparent,
  margin: EdgeInsets.all(20),

  child: 
 ElevatedButton(
    
    
  onPressed:() {

     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage1()),
  );
  },
  child: Text("Cancel",style: TextStyle(fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  ),
 ),

  // decoration: BoxDecoration(
  
   
    
  //   border: Border.all(
  //     color: Colors.black,
  //     width: 1,
  //   ),
  //   borderRadius: BorderRadius.circular(12),
  // ),
)

,

Container(

   height: 50,
  width: 150,

  margin: EdgeInsets.all(35),
  child: 
 ElevatedButton(
  

  
  onPressed: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage1()),
  );

  },




  child: Text("Confirm",style: TextStyle( fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  ),
 ),

  decoration: BoxDecoration(
    color:Colors.grey.shade400,
    
    // border: Border.all(
    //   color: Colors.blue,
    //   width: 1,
    // ),
    borderRadius: BorderRadius.circular(12),
  ),
)

,

],
  ),   
          ],
        )),),);
  }
}
            