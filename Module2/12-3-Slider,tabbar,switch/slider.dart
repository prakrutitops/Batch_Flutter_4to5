import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:widgetex/switch.dart';
import 'package:widgetex/slider.dart';


class SliderEx extends StatefulWidget
{
  const SliderEx({super.key});

  @override
  State<SliderEx> createState() => _MyAppState();
}

class _MyAppState extends State<SliderEx>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Slider Example"),),

        body: ListView
          (
          children: [

            CarouselSlider(items:
            [

              Container
                (
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://media.istockphoto.com/id/1457889029/photo/group-of-food-with-high-content-of-dietary-fiber-arranged-side-by-side.jpg?b=1&s=612x612&w=0&k=20&c=BON5S0uDJeCe66N9klUEw5xKSGVnFhcL8stPLczQd_8="),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container
                (
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://img.freepik.com/free-photo/tasty-burger-isolated-white-background-fresh-hamburger-fastfood-with-beef-cheese_90220-1063.jpg?size=338&ext=jpg&ga=GA1.1.1395880969.1710201600&semt=sph"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container
                (
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),





            ],
                options: CarouselOptions
                  (
                  height: 150.00,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16/9,
                  autoPlayCurve: Curves.easeInQuad,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),



                )

            )

          ],
        ));


  }
}
