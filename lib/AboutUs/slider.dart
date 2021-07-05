import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.5,
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://edu.ieee.org/it-unina/wp-content/uploads/sites/496/2020/03/Immagine1.jpg'),
                    //AssetImage('assets/img/SB1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.5,
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://edu.ieee.org/it-unina/wp-content/uploads/sites/496/2020/03/4b77fa53-83ab-4e83-8217-af1893884cdc.jpg'),
                    //AssetImage('assets/img/SB2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //3nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.5,
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://edu.ieee.org/it-unina/wp-content/uploads/sites/496/2020/03/82792105_3043388585695252_7509146191251111936_o-scaled.jpg'),
                    //AssetImage('assets/img/SB3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //4th image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.5,
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://edu.ieee.org/it-unina/wp-content/uploads/sites/496/2020/03/449a4950-a805-4f19-bacf-8462d8cb4cea.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.5,
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://edu.ieee.org/it-unina/wp-content/uploads/sites/496/2017/05/sgiov.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 150.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              viewportFraction:
                  0.55, //viewportFraction modifica la grandezza delle immagini
            ),
          ),
        ],
      ),
    );
  }
}
