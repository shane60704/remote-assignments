/* Complete the function below to calculate the average price of all the products.*/
function avg(data) {
    let sum = 0;
    for(let i = 0; i<data.products.length; i++) {
        let product = data.products[i];
        sum += product.price;
    }
    return sum / data.size;
}

console.log(
avg({
    size: 3,
    products: [
        {
            name: 'Product 1',
            price: 100,
        },
        {
            name: 'Product 2',
            price: 700,
        },
        {
            name: 'Product 3',
            price: 250,
        },
    ],
 })
); // should print the average price of all products   
    