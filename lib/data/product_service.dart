import 'package:bloc_sample/models/product.dart';

class ProductService{
  static List<Product> products = List<Product>() ;

  static ProductService _singleton = ProductService._internal();

  factory ProductService (){
    return _singleton;
  }
  ProductService._internal();

  static List<Product> getAll(){
    products.add(Product(1, "acer Laptop", 6000));
    products.add(Product(2, "Lenovo Laptop", 500));
    products.add(Product(3, "MSİ Laptop", 8000));
    return products;
  }


}