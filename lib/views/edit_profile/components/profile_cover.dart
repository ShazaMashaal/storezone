import 'package:flutter/material.dart';
import 'package:storezone/core/storage.dart';
import 'package:storezone/views/edit_profile/cubit.dart';

 profileCover (context)=>  BoxDecoration(
      color: const Color(0xFF6B6B6B),
      image: DecorationImage(
        colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.2), BlendMode.dstATop),
        image: NetworkImage(
          AppStorage.getImage,
        ),
        fit: BoxFit.cover,
      ),
    );


