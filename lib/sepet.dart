import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:providerprojects/item.dart';

class Sepet extends StatefulWidget {
  const Sepet({super.key});

  @override
  State<Sepet> createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  @override
  Widget build(BuildContext context) {
    
    
     
      return Consumer(builder: (context, Item item, Widget) {
        return Scaffold(
              appBar: AppBar(title: Text("sepet"),),
              body: Column(
                children: [
                  Text("Sepetteki ürün ${item.cartCounts}"),

                  GestureDetector(
                    child: Container(
                      color: Colors.amber,
                      height: 100,
                      width: 100,
                      child: Center(child: Text("sıfırla"))
                    ),
                    onTap: () {
                      item.reset();
                    },
                  )
                ],
              ),
        );
        
      },);
    
  }
}
