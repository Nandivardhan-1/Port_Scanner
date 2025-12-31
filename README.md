# Port_Scanner
A versatile Bash utility for automated Nmap reconnaissance featuring stealth, speed, and deep-service scanning modes
# Simple Bash Nmap Wrapper

A functional Bash script designed to simplify network scanning by providing quick-access presets for version detection, fast scanning, stealth, and full-port analysis.

🛠️ How it Works
The script takes two arguments: the **target IP** and a **scan mode number**. It automatically outputs results into an `nmapresult.xml` file for easy parsing later.

Scan Modes:
- **1 (Version Detection):** Identifies service versions on standard ports.
- **2 (Fast Scan):** Comprehensive scan of all ports using aggressive timing (`-T5`).
- **3 (Stealth):** Uses SYN scanning, decoy IPs (`-D`), and skips ping probes to bypass firewalls.
- **4 (Advanced):** Scans all ports with high rate limits and detailed verbosity.

🚀 Usage

1. Set permissions:
   chmod +x scanner.sh
   
2. Run a Scan:
  sudo ./scanner.sh <target_ip> <mode>

3. Help Menu:
./scanner.sh help

📋 Requirements

Linux environment.
Nmap installed.
Root/Sudo privileges (required for stealth and SYN scans).

🗺️ Roadmap

Fix conditional logic for better argument handling.
Add custom output filename support.
Implement multi-target scanning from a text file.
