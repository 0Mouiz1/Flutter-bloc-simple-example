/*
providing countercubit for counterView (UI)
-use BLoC provider
 */
import 'package:bloc_counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_view.dart';
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=> CounterCubit(0) ,
    child:BlocListener<CounterCubit,int>(listener: (context,state){

     if(state==1000){

       showDialog(context: context, builder: (context)=>const AlertDialog(
         backgroundColor: Colors.black,
         content: Text("10 Reached",
         style: TextStyle(
           fontSize: 50,
color: Colors.white

         ),
         ),

       ));
     }
     if(state==-1000){

       showDialog(context: context, builder: (context)=>const AlertDialog(
         content: Text("Negative 10 Reached",
           style: TextStyle(
             fontSize: 50,


           ),
         ),

       ));
     }

    },
    child: CounterView(),
    )

    );

  }
}
