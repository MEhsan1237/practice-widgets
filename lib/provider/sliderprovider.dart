import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providerclasses/sliderproviderclass.dart';

class SliderProviderScreen extends StatelessWidget {
  const SliderProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("hiiii");
    final provider = Provider.of<SliderProviderClassScreen>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Slider Provider"),
        centerTitle: true,
        backgroundColor: Colors.blue,),
      body:Column(
        children: [
          Consumer<SliderProviderClassScreen>(builder: (context, value, child) {
            return
              Slider(
                  max: 1,
                  min: 0,
                  value: value.value, onChanged: (val){

                value.getValue(val);
              });
          },),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child:  Consumer<SliderProviderClassScreen>(builder: (context, value, child) {
                  return
                    Container(
                      width: MediaQuery.of(context).size.width*.2,
                      height: MediaQuery.of(context).size.height*.2,
                      color: Colors.red.withOpacity(value.value),
                      child: Center(child: Text("Container 1")),
                    );
                },)
              ),
              Expanded(
                child: Consumer<SliderProviderClassScreen>(builder: (context, value, child) {
                  return Container(
                    width: MediaQuery.of(context).size.width*.2,
                    height: MediaQuery.of(context).size.height*.2,
                    color: Colors.yellow.withOpacity(value.value),
                    child: Center(child: Text("Container 2")),
                  );
                },)
              )
            ],
          )
        ],
      ),
    );
  }
}
