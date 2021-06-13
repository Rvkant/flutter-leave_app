import 'package:assign_app/calendar.dart';
import 'package:assign_app/apply_leave.dart';
import 'package:assign_app/date.dart';
import 'package:assign_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://media-exp3.licdn.com/dms/image/C4E03AQGyNk9A8j5H4w/profile-displayphoto-shrink_400_400/0/1621410370607?e=1628726400&v=beta&t=xi4pcG7z9zaCLoXQm_teHO1uY7OYtL2fdV3TyRzIoCM";
    return Drawer(
      child:Container(
         color: Colors.blue,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
              accountName: Text("RaviKant Pandey"),
            accountEmail: Text("Ravikant1.Pandey@ril.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            
            ),
          ),
          ListTile(
            onTap: ()
            {

             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyApp()),
);




            },
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
           title: Text(
             "Home",
             textScaleFactor: 1.2,
             style: TextStyle(
               color:Colors.white,
             ),
           ),

          ),

          ListTile(

              onTap: ()
            {

             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Calendar()),
);




            },

            
            leading: Icon(
              CupertinoIcons.calendar,
              color: Colors.white,
            ),
           title: Text(
             "My Calender",
             textScaleFactor: 1.2,
             style: TextStyle(
               color:Colors.white,
             ),
           ),

          ),


          ListTile(


              onTap: ()
            {

             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Date()),
);




            },
            leading: Icon(
              CupertinoIcons.clock,
              color: Colors.white,
            ),
           title: Text(
             "Apply Leave",
             textScaleFactor: 1.2,
             style: TextStyle(
               color:Colors.white,
             ),
           ),

          ),

          ListTile(

              onTap: ()
            {

             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Apply()),
);




            },
            leading: Icon(
              CupertinoIcons.calendar_badge_plus,
              color: Colors.white,
            ),
           title: Text(
             "Holiday",
             textScaleFactor: 1.2,
             style: TextStyle(
               color:Colors.white,
             ),
           ),

          )
        ],
      ),
      )
    );
  }
}