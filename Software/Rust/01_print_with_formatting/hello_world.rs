fn main() {
    println!("print a number {}", 42);
    println!("positional substitutions can be reused {0}, {1}, {0}, {1}", "left", "right");
    println!("named substitutions are possible: dog_name = {my_dog_name}, cat_name = {my_cat_name}",
             my_dog_name="scruffy",
             my_cat_name="sir-meows-a-lot");
}
