import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget{
    const HomePage({super.key});

      @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 242, 4, 218),
                title: Text("Homepage", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
              leading: Icon(Icons.home),
            ),
            body: SingleChildScrollView(
                child: Column(
                    children: [
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                             "Hello 63C",
                             style: GoogleFonts.lobster(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontWeight:FontWeight.bold,
                                ),
                            ),
                        ),
                    Text ("Welcome to the homepage"),
                    SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(color: const Color.fromARGB(255, 221, 218, 15),child: Text("Card")),
                    ),
                    Container(
                        height: 300,
                        width: 200,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 1, 207, 234),
                            border: Border.all(width: 5, color: const Color.fromARGB(255, 0, 0, 0)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Image.asset("assets/images/flutter.png"),
                    ),
                    Image.network(
                       "https://picsum.photos/200",
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                        ),
                    ],
                ),

            ),
           floatingActionButton: FloatingActionButton(
        foregroundColor: const Color.fromARGB(255, 255, 7, 214),
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      endDrawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Homepage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ),
        ],
      ),
      
    );
  }
}