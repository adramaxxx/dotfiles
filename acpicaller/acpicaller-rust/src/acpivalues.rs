use std::process::{Command,Stdio};
use std::io::{self, Write};

pub fn return_power_mode(mode: &str) {
    let arg;
    let intelligent_cooling = r#"'\_SB.PCI0.LPC0.EC0.VPC0.DYTC 0x000FB001'"#;
    let extreme_performance = r#"'\_SB.PCI0.LPC0.EC0.VPC0.DYTC 0x0012B001'"#;
    let battery_saving = r#"'\_SB.PCI0.LPC0.EC0.VPC0.DYTC 0x0013B001'"#;
    if mode == "intelligent" {
        arg = intelligent_cooling
    }
    else if mode == "extreme" {
        arg = extreme_performance
    }
    else {
        arg = battery_saving
    }
    Command::new("echo")
        .arg(arg)
        .arg("> /proc/acpi");
    //println!("arg {}", arg)
}

pub fn verify_modes() {
    Command::new("echo")
        .arg(r"echo '\_SB.PCI0.LPC0.EC0.SPMO' > /proc/acpi/call; cat /proc/acpi/call");

    let powermode_status = Command::new("cat")
        .arg("/proc/acpi")
        .output()
        .expect("bla bla");
    let ret = io::stdout().write_all(&powermode_status.stdout).unwrap();
    println!("powermode: {}",)
    //let power_status = Command::new("cat")
}

/* pub fn return_rapid_charge(mode: i32) {
    let rapid_charge_on = r#"'\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x07'"#;
    let rapid_charge_off = r#"'\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x08'"#;
    if mode == 1 {
        rapid_charge_on.to_string()
    }
    else {
        rapid_charge_off.to_string()
    }
}

pub fn return_battery_conservation(mode: i32) {
    let battery_conservation_on = r#"'\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x03'"#;
    let battery_conservation_off = r#"'\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x05'"#;
    if mode == 1 {
        battery_conservation_on.to_string()
    }
    else {
        battery_conservation_off.to_string()
    }
} */
