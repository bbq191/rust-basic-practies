pub fn reverse(input: &str) -> String {
    let mut reverse_string = String::from("");
    for i in input.chars().rev() {
        reverse_string.push(i);
    }
    reverse_string
}
