use std::process::{Command,Stdio};
use std::io::{self, Write};

mod acpivalues;

fn main() {
    /*let output = Command::new("ls")
        .arg("-lAh")
        .output()
        .expect("failed");

    println!("status {}", output.status);
    io::stdout().write_all(&output.stdout).unwrap(); */
    acpivalues::return_power_mode("intelligent");
    acpivalues::verify_modes();
    //println!("Hello:");
}
