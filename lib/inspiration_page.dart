import 'package:flutter/material.dart';
class InspirationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87,),
          onPressed: () {

          },
        ),

      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Find Your', style: TextStyle(color: Colors.black87, fontSize: 25 ),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Inspiration', style: TextStyle(color: Colors.black, fontSize: 40),),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.black87,),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text('Promo Today', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 190,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard('assets/images/1.jpg'),
                          promoCard('assets/images/2.jpg'),
                          promoCard('assets/images/3.jpg'),
                          promoCard('assets/images/4.jpg'),
                          promoCard('assets/images/5.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/4.jpg')
                        )
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                stops: [0.3, 0.9],
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.2)
                                ]
                            )
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('Best Design', style:  TextStyle(color: Colors.white, fontSize: 20),),
                          )
                        ),
                      ),
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }

  Widget promoCard(image){
    return AspectRatio(
      aspectRatio: 2/3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.1, 0.9],
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1)
                  ]
              )
          ),
        ),
      ),
    );
  }

}