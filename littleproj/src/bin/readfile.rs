use std::io::prelude::*;
use std::{fs::File, io::BufReader};

fn main() {
    let file = File::open("application-prod.properties").unwrap();
    let reader = BufReader::new(file);

    for line_rs in reader.lines() {
        let line = line_rs.unwrap();
        println!("{}, {} bytes length", line, line.len());
    }
}
