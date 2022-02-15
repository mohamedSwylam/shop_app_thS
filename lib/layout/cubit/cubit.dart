import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_api_th_s/layout/cubit/states.dart';
import 'package:shop_app_api_th_s/models/product_model.dart';
import 'package:shop_app_api_th_s/shared/network/remote/web_services.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

}