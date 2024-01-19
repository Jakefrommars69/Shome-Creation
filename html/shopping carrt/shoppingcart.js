const cartItems = [];
const cartTotal = document.querySelector('.cart-total h3');

const addToCartButtons = document.querySelectorAll('.add-to-cart');
addToCartButtons.forEach(button => {
  button.addEventListener('click', () => {
    const product = button.parentElement;
    const productName = product.querySelector('h3').textContent;
    const productPrice = parseFloat(product.querySelector('p').textContent.replace('$', ''));

    const cartItem = {
      name: productName,
      price: productPrice
    };

    cartItems.push(cartItem);
    updateCart();
  });
});

function updateCart() {
  const cartItemsList = document.querySelector('.cart-items');
  cartItemsList.innerHTML = '';

  let
