// 不要使用 clone，使用 copy 的方式替代
fn main() {
    let x: (i32, i32, (), &str) = (1, 2, (), "hello");
    let y = x;
    println!("{:?}, {:?}", x, y);
}
