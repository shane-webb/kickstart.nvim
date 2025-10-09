// Define an interface for a User object
interface User {
  id: number;
  firstName: string;
  lastName: string;
  email?: string; // Optional property
}

// Function that takes a User object and returns a greeting string
function greetUser(user: User): string {
  return `Hello, ${user.firstName} ${user.lastName}!`;
}

// Create a User object conforming to the User interface
const newUser: User = {
  id: 1,
  firstName: "Jane",
  lastName: "Doe",
  email: "jane.doe@example.com",
};

// Call the function with the User object and log the result
console.log(greetUser(newUser));

if (true) {

}

// Example of a class in TypeScript
class Product {
  private _name: string;
  private _price: number;

  constructor(name: string, price: number) {
    this._name = name;
    this._price = price;
  }

  get name(): string {
    return this._name;
  }

  get price(): number {
    return this._price;
  }

  displayProductInfo(): void {
    console.log(`Product: ${this._name}, Price: $${this._price.toFixed(2)}`);
  }
}

const blah = [];

for (number i = 0; i<20; i++) {

}

// Create an instance of the Product class
const myProduct = new Product("Laptop", 1200.50);
myProduct.displayProductInfo();
