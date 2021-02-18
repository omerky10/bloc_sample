import 'dart:async';
import 'package:bloc_sample/data/cart_service.dart';
import 'package:bloc_sample/models/cart.dart';

class CartBloc{
  final cartStreamCntroller = StreamController.broadcast();
  Stream get getStream => cartStreamCntroller.stream;

  void addToCart(Cart item){
    CartService.addToCart(item);
    cartStreamCntroller.sink.add(CartService.getCart());

  }

  void removeFromCart(Cart item){
    CartService.removeFromCart(item);
    cartStreamCntroller.sink.add(CartService.getCart());
  }

  List<Cart> getCart(){
    return CartService.getCart();
  }
}

final cartBloc = CartBloc();