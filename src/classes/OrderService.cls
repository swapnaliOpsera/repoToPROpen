public class OrderService {
    private ProductService productService;
    // Constructor that accepts ProductService as a dependency
    public OrderService(ProductService productService) {
        this.productService = productService;
    }
    // Method to process the order
    public String processOrder(Id productId, Integer quantity) {
        // Get the product price using the ProductService class
        Decimal productPrice = productService.getProductPrice(productId);
        // Calculate the total order price
        Decimal totalPrice = productPrice * quantity;
        // Return the result of the order processing
        return 'Order for Product ID ' + productId + ' processed. Total price: ' + totalPrice;
    }
}