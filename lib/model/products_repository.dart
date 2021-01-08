import 'product.dart';

class ProductsRepository {
    static const _allProducts = <Product> [
        Product (
            category: Category.accessories,
            id: 0,
            name: 'Vagabond sack',
            price: 120,
            isFeatured: true,
        ),
        Product (
            category: Category.home,
            id: 9,
            isFeatured: true,
            name: 'Gilt dest trio',
            price: 58,
        ),
        Product (
            category: Category.clothing,
            id: 33,
            isFeatured: true,
            name: 'Cerise scallop tee',
            price: 42,
        ),
    ];

    static List<Product> loadProducts(Category category) {
        if (category == Category.all) {
            return _allProducts;
        } else {
            return _allProducts.where((p) => p.category == category).toList();
        }
    }
}
