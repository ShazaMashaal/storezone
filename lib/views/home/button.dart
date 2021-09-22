// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:storezone/views/home/cubit.dart';
// import 'package:storezone/views/home/states.dart';
// import 'package:storezone/widgets/custom_button.dart';
//
// class Button extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     final controller=HomeCubit.of(context);
//     return BlocBuilder(
//       bloc: controller,
//       builder:(context,state)=>state is HomeLoading?CircularProgressIndicator(): CustomButton(
//         function: ()=>controller.getData(),
//         text: "Get Data",
//       ),
//     );
//   }
// }
