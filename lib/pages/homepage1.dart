
 import 'package:assign_app/calendar.dart';
import 'package:assign_app/date.dart';
import 'package:assign_app/apply_leave.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:assign_app/widget/drawer.dart';
import 'package:flutter/rendering.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'dart:async';

class HomePage1 extends StatefulWidget {
  const HomePage1({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {



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

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text("Leave & Attendance"),
      ),
       body: 
         SingleChildScrollView(
         child:
        Column(
    children: <Widget>[
Card(
  child:
      SizedBox(
        height: 200,      
     child: ListView(
       scrollDirection: Axis.horizontal,
  padding: const EdgeInsets.all(8),
  children: <Widget>[
      
    Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.red,   
      margin: EdgeInsets.all(10),
   elevation: 0,
    child:
    Row(
children: <Widget>[
  
    Container(
      height: 150,
      width: 150,
      padding: EdgeInsets.all(10.0),
     // margin: EdgeInsets.all(12),

     decoration: BoxDecoration(
       color: Colors.red,
    border: Border.all(
     color: Colors.red,
    ),    
    borderRadius: BorderRadius.all(Radius.circular(20))
  ),
      // color: Colors.red,
    child: Text("Absent Days For Current & Last Month ____",style: TextStyle(
        fontSize:20.0,fontWeight: FontWeight.w400,color: Colors.white,
      ),), 
    ),     
      Card(
        elevation: 0,
  color: Colors.red,
margin: EdgeInsets.fromLTRB(0, 120,5, 0),
  child:
  Text("9 Days",style: TextStyle(
        fontSize:20.0,fontWeight: FontWeight.w600,color: Colors.white,
      ),)
      )
    
],
    ),
    ),

  Card(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.blue,
   margin: EdgeInsets.all(10),
   elevation: 0,
    child:
    Row(
children: <Widget>[
  
    Container(

       margin: EdgeInsets.all(10),

      height: 150,
      width: 150,
      padding: EdgeInsets.all(10.0),
     // margin: EdgeInsets.all(12),

     decoration: BoxDecoration(
       color: Colors.blue,
      
    border: Border.all(

     color: Colors.blue,
    ),
    
    borderRadius: BorderRadius.all(Radius.circular(20))
  ),
      // color: Colors.red,
    child: Text("Leave & Regularization History           ___",style: TextStyle(
        fontSize:20.0,fontWeight: FontWeight.w400,color: Colors.white,
      ),),      
    ),
         
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),       
        elevation: 0,
  color: Colors.blue,

margin: EdgeInsets.fromLTRB(0, 120,5, 0),


  child:
  
    Icon(    
      Icons.access_time,
      
      color: Colors.white,
      size: 35.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),

      )
    
],
    ),
    ),


  Card(

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      color: Colors.blue,

   elevation: 0,
   
    

    child:

    Row(

children: <Widget>[
  
    Container(

       margin: EdgeInsets.all(10),
      
      height: 150,
      width: 150,
      padding: EdgeInsets.all(10.0),
     // margin: EdgeInsets.all(12),

     decoration: BoxDecoration(
       color: Colors.blue,
 
    border: Border.all(
      
     
     color: Colors.blue,
    ),
    
    borderRadius: BorderRadius.all(Radius.circular(10))
  ),
       //color: Colors.blue,
    child: Text("Time Report -Team                ___",style: TextStyle(
        fontSize:20.0,fontWeight: FontWeight.w400,color: Colors.white,
      ),),
 
    ),
     
     
     
      Card(
      
        elevation: 0,
  color: Colors.blue,

margin: EdgeInsets.fromLTRB(0, 120,5, 0),


  child:


    Icon(
    
      Icons.people_outline_sharp,
    
      color: Colors.white,
      size: 35.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),

      )
    
],
    ),
    ),
   
  ],
),
      

     ),      
      ),
    
    Card(

shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

color: Colors.blue,

margin: EdgeInsets.all(12),



      child:


ExpansionTile(
  
 
 
backgroundColor: Colors.blue,
  iconColor: Colors.white,

  title: Text(
    "My Calendar",
    
    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.white,),textAlign: TextAlign.center,
    
  ),

  textColor: Colors.blue,


// collapsedTextColor: Colors.white,

  children: <Widget>[

      

      Column(
        children: <Widget> [


          Container(


color: Colors.white,
              child:

          

          TableCalendar(
            focusedDay: selectedDay,
            firstDay: DateTime(1990),
            lastDay: DateTime(2050),
            calendarFormat: format,
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },
            startingDayOfWeek: StartingDayOfWeek.sunday,
            daysOfWeekVisible: true,

            //Day Changed
            onDaySelected: (DateTime selectDay, DateTime focusDay) {
              setState(() {
                selectedDay = selectDay;
                focusedDay = focusDay;
              });
              print(focusedDay);
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },

          

            //To style the Calendar
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
               // borderRadius: BorderRadius.circular(5.0),
              ),
              selectedTextStyle: TextStyle(color: Colors.white),
              todayDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
               // borderRadius: BorderRadius.circular(5.0),
              ),
              defaultDecoration: BoxDecoration(
                shape: BoxShape.circle,
               // borderRadius: BorderRadius.circular(5.0),
              ),
              weekendDecoration: BoxDecoration(
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              titleCentered: true,
              formatButtonShowsNext: false,
              formatButtonDecoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5.0),
              ),
              formatButtonTextStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          
          ),

         
         
          
        ],

        
      ),
  ],
),),             


 Card(
   color: Colors.blue,
   elevation: 0,

  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  margin: EdgeInsets.all(12),
  child:    
ExpansionTile(
  
backgroundColor: Colors.blue,
  iconColor: Colors.white,

  title: Text(
    "Apply Leave",
    
    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.white,),textAlign: TextAlign.center,
    
  ),

  children: <Widget> [

     Container(


color: Colors.white,
              child:
        
        
       Column(             
              //crossAxisAlignment: CrossAxisAlignment.stretch ,
          mainAxisAlignment: MainAxisAlignment.start,
        
          children: <Widget>[
          Card(
          
elevation: 0,
            child:
            Container( 
              child:
            ListTile(
        onTap: ()
            {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Date()),
);
            },

            trailing: Icon(
              CupertinoIcons.arrow_right,
              color: Colors.green,
            ),
      
     title: Text(
        "CL/Contingency Leave",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),
      ),
      subtitle: Text("6.0 Remaining                                                                                                                    Valid Till: 31/12/2021"),
      
    )
    ,   
           ),
          ),


            Card(
          
               elevation: 0,
            child:
            Container(   
              child:
            ListTile(
        onTap: ()
            {

             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Date()),
);
            },
       trailing: Icon(
              CupertinoIcons.arrow_right,
              color: Colors.green,
            ),

      title: Text(
        "Optional Holiday",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),
      ),
      subtitle: Text("3.0 Remaining                                                                                                                    Valid Till: 31/12/2021"),
      
    )
    ,           ),
          ),
            Card(
          
   elevation: 0,
            

            child:
            Container(
          
              child:
          

            ListTile(

                onTap: ()
            {

             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Date()),
);
            },
 trailing: Icon(
              CupertinoIcons.arrow_right,
              color: Colors.green,
          
            ),      
      
      
      title: Text(
        "Special Privilege Leave",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),
      ),
      subtitle: Text("10.0.0 Remaining                                                                                                                    Valid Till: 31/12/2021"),
      
    )
    ,
           ),
          ),
      
  Card(
          
   elevation: 0,
            

            child:
            Container(
            
          
              child:
          

            ListTile(

                onTap: ()
            {

             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Date()),
);
            },
      
      title: Text(
        "See More",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue),
      ),
     
    )
    ,

           ),
          ),
          ],
),
     ),
  ],
),


),  
              //  ),     
SingleChildScrollView(

  child:

      Card(
   color: Colors.blue,

  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  margin: EdgeInsets.all(12),
      
      child:
 
ExpansionTile(

  iconColor: Colors.white,
   backgroundColor: Colors.blue,
    
  title: Text(
    "Holidays",
    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.white,),textAlign: TextAlign.center,
    
  ),

  children: <Widget>[

   
   Container(
     color: Colors.white,
     child:

    ListTile(
      
   tileColor: Colors.white,
      
      title: Text(
        "15th August | Sun", 
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Independence Day"),
    )
   ),

Container(
  color: Colors.white,
  child:
    ListTile(
      
      
      title: Text(
        "10th September | Fri",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Ganesh Chaturthi"),
    )
    ,
),

Container(
  color: Colors.white,
  child:
    ListTile(
      
      
      title: Text(
        "2nd October | Sat",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Gandhi Jayanti"),
    )
    ,
),

Container(
  color: Colors.white,
  child:
    ListTile(
      
      
      title: Text(
        "15th October | Fri",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Dussehra"),
    )
,)
,

Container(
  color: Colors.white,
  child:
ListTile(
      
      
      title: Text(
        "4th November | Thur",
        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),
      ),
      subtitle: Text("Diwali - Laxmi Pujan"),
    )

,

),

Container(

  color: Colors.white,

  height: 20,
width: 395,

 child: (

     TextButton(
       
    child: Text('See All Holidays',textAlign: TextAlign.left,),
    onPressed: () {
      
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Apply()),
);

    }
  )
 ),

),
     
  ],
),
  
      ),
),
    ],
  

        ),
    
         ),
      drawer: MyDrawer(),
       
    );
    
  }
}
