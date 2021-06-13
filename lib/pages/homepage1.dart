
// import 'package:assign_app/calendar.dart';
import 'package:assign_app/event.dart';
import 'package:assign_app/main.dart';
import 'package:assign_app/apply_leave.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:assign_app/date.dart';
import 'package:assign_app/widget/drawer.dart';
// import 'package:assign_app/models/catalog.dart';
// import 'package:assign_app/widget/item_widget.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:assign_app/pages/home_page.dart';
// import 'package:assign_app/widget/item_widget.dart';
// import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
//import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
//import 'package:flutter/scheduler.dart' show timeDilation;


import 'dart:async';




class HomePage1 extends StatefulWidget {
  const HomePage1({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {

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
 
 late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();


 @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
  // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(

      
      appBar: AppBar(
        title: Text("Leave & Attendance"),
      ),
          
      //  body: Padding(
      //  padding: const EdgeInsets.all(20.0),
       body: 
         
         SingleChildScrollView(



         child:
         

        Column(

    children: <Widget>[


Card(
  child:
  
      SizedBox(
        
        
        
        
         // Horizontal ListView
        height: 200,
        
        // child: ListView.builder(

          
        //   padding: EdgeInsets.all(20.0),
        //   itemCount: CatalogModel.items.length,
      
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (context, index) {
            

            
        //     return ItemWidget(
              
        //       item: CatalogModel.items[index],

            
              
              
              
        //       );
              
      
        //   },
        // ),
      
     child: ListView(
       scrollDirection: Axis.horizontal,
  padding: const EdgeInsets.all(8),
  children: <Widget>[

      
    Card(
      
      color: Colors.red,
   
      

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
    // Icon(

     
     

    
    //   Icons.image,
    
    //   color: Colors.green,
    //   size: 24.0,
    //   semanticLabel: 'Text to announce in accessibility modes',
    // ),

      )
    
],
    ),
    ),


  Card(
      
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
    
    borderRadius: BorderRadius.all(Radius.circular(20))
  ),
      // color: Colors.red,
    child: Text("Leave & Regularization History           ___",style: TextStyle(
        fontSize:20.0,fontWeight: FontWeight.w400,color: Colors.white,
      ),),

  
    
      
    ),
     
     
      Card(


        
        
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



 
    
     
    
     
     


   
      
    Container(
     
     // height: 50,
     color: Colors.blue,
      margin: EdgeInsets.all(10),
      child:

  //   ElevatedButton(onPressed: () {

  //    Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => Calendar()),
  // );
  // },

ExpansionTile(
backgroundColor: Colors.white,
    
  title: Text(
    "My Calendar",
    
    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.black,),textAlign: TextAlign.center,
    
  ),
  children: <Widget>[

      Column(
        children: <Widget> [

         

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

            eventLoader: _getEventsfromDay,

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
          ..._getEventsfromDay(selectedDay).map(
            (Event event) => ListTile(
              title: Text(
                event.title,
              ),
            ),
          ),
        

        ],

        
      ),

 FloatingActionButton.extended(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Add Event"),
            content: TextFormField(
              controller: _eventController,
            ),
            actions: [
              TextButton(
                child: Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: Text("Ok"),
                onPressed: () {
                  if (_eventController.text.isEmpty) {

                  } else {
                    if (selectedEvents[selectedDay] != null) {
                      selectedEvents[selectedDay]!.add(
                        Event(title: _eventController.text),
                      );
                    } else {
                      selectedEvents[selectedDay] = [
                        Event(title: _eventController.text)
                      ];
                    }

                  }
                  Navigator.pop(context);
                  _eventController.clear();
                  setState((){});
                  return;
                },
              ),
            ],
          ),
        ),
        label: Text("Add Event"),
        icon: Icon(Icons.add),
      ),    



  ],






),



  
    
               


    ),
     




Container(
   color: Colors.blue,
      margin: EdgeInsets.all(10),

  child:



        
ExpansionTile(
backgroundColor: Colors.white,

  title: Text(
    "Apply Leave",
    
    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.black,),textAlign: TextAlign.center,
    
  ),

  children: <Widget> [
        
        
       Column(
              
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
  width: 120,
  color: Colors.transparent,
  margin: EdgeInsets.fromLTRB(40, 40, 50, 40),

  child: 
 ElevatedButton(
    
    
  onPressed:() {

     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyApp()),
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
  width: 120,

 margin: EdgeInsets.fromLTRB(10, 40, 40, 40),
  child: 
 ElevatedButton(
  

  
  onPressed: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyApp()),
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
       ),
  ],



),  
               ),



        
SingleChildScrollView(

  child:

      Container(
        

        //height: 300,

        
        color: Colors.blue,
      margin: EdgeInsets.all(10),
      
      child:
 
ExpansionTile(
  //iconColor: Colors.white,
   backgroundColor: Colors.white,
    
  title: Text(
    "Holidays",
    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.black,),textAlign: TextAlign.center,
    
  ),

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



Container(

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
 

 
//  Text("See All Holidays",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),),



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

class ItemModel {
  bool expanded;
  String headerItem;
  String discription;
  Color colorsItem;
  String img;

  ItemModel({this.expanded: false, required this.headerItem,required this.discription,required this.colorsItem, required this.img});
}
