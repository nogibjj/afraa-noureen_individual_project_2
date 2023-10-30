// main.rs
extern crate my_factorial_project;  // Import the library

use my_factorial_project::factorial;  // Import the factorial function

fn main() {
    let number: u64 = 5;  // Change this to the desired number
    let result = factorial(number);
    println!("Factorial of {} is {}", number, result);
}