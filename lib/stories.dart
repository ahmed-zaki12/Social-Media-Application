import 'package:flutter/material.dart';

class Stories extends StatelessWidget {

  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
            width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: ListView.separated(scrollDirection: Axis.horizontal,itemCount: 100, separatorBuilder: (context, index) => SizedBox(
                  width: 25,
                ),
                  itemBuilder: (context, index) => Row(children: [Stack(
                    children:[
                  Container(
                  width: 100, height: 150,
                      color: Colors.black,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add,
                  color: Colors.white,
                  size: 20,)
                  )
                  ]

                  )
                ]
                ),

                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
