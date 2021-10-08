part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInit extends CartState {}

class CartLoading extends CartState {}
