import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storezone/consts/colors.dart';
import 'package:storezone/views/complaints/complaints_cubit.dart';
import 'package:storezone/widgets/custom_button.dart';
import 'package:storezone/widgets/custom_text_field.dart';

class ComplaintForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = ComplaintsCubit.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomTextField(
              label: "Name",
              hintText: "Enter Your Name",
              controller: controller.nameController,
            ),
            CustomTextField(
              label: "Phone",
              hintText: "Enter Your Phone",
              keyboardType: TextInputType.phone,
              controller: controller.phoneController,
            ),
            CustomTextField(
              label: "E-mail",
              hintText: "Enter Your Email",
              keyboardType: TextInputType.emailAddress,
              controller: controller.emailController,
            ),
            CustomTextField(
              label: "Complaint",
              hintText: "Enter Your Message",
              keyboardType: TextInputType.text,
              controller: controller.messageController,
            ),
            BlocBuilder<ComplaintsCubit, ComplaintsState>(
                builder: (context, state) => state is ComplaintsLoading
                    ? CircularProgressIndicator()
                    : CustomButton(
                        text: "Send Message",
                        color: appCyanColor,
                        textColor: Colors.white,
                        function: () => controller.sendComplaint(context),
                      ))
          ],
        ),
      ),
    );
  }
}
