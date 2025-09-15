import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providerclasses/countproviderclass.dart';

class CounterProviderScreen extends StatelessWidget {
  const CounterProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("hello");
    final provider = Provider.of<CounterProviderClassScreen>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Counter Provider"),
        centerTitle: true,
        backgroundColor: Colors.blue,),
      body:  Center(child:
         Consumer<CounterProviderClassScreen>(builder: (context, value, child) {

           return
                Text(value.number.toString());
         },)
        ,),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
         mainAxisAlignment:  MainAxisAlignment.end,
        children: [
      FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
      child: Icon(Icons.add),
      onPressed: () {
        context.read<CounterProviderClassScreen>().addCounter();
      },
      ),
          SizedBox(height: 6,),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
            child: Icon(Icons.remove),
            onPressed: () {
              context.read<CounterProviderClassScreen>().removeCounter();
            },
          )
        ],
      )



    );
  }
}
