# Info Extractor



## Overview



Info Extractor is a Bash-based Linux system diagnostics script developed as part of my cybersecurity training.



The project automates the collection of useful system and network information from a Linux machine. It combines common Linux utilities into a single script that provides a quick overview of network configuration, running processes, memory usage, active services, and filesystem usage.



The goal of the project was to practice Linux fundamentals, Bash scripting, command-line utilities, pipes, text processing, and basic system diagnostics.



## Features



The script collects and displays:



- Public IP address

- Private IP address

- Partially masked MAC address

- Top 5 processes by CPU usage

- Total and available memory

- Currently running system services

- Top 10 largest files in `/home`



## Technologies & Commands



| Tool / Command | Purpose |
|----------------|---------|
| Bash | Script execution and automation |
| curl | Public IP retrieval |
| ifconfig | Network interface information |
| grep | Text filtering |
| awk | Text and column processing |
| ps | Process information |
| head | Output limiting |
| free | Memory statistics |
| service | System service information |
| find | File discovery |
| du | File size calculation |
| sort | Sorting command output |



## How It Works



### Network Information



The script retrieves the system's public and private IP addresses and identifies the MAC address of the network interface.



For privacy, part of the MAC address is masked before it is displayed.



### CPU Usage



The script lists the five processes currently consuming the most CPU resources.



### Memory Usage



Total and available system memory are displayed in a human-readable format.



### Running Services



Active system services are identified and displayed to provide an overview of services currently running in the background.



### Filesystem Analysis



The script searches `/home` and displays the ten largest files, sorted by size.



## Usage



The script is intended to run on a Linux system.



Clone the repository:



```bash

git clone https://github.com/GeorgiKarliev/info-extractor.git

```



Navigate to the project directory:



```bash

cd info-extractor

```



Make the script executable:



```bash

chmod +x src/info-extractor.sh

```



Run the script:



```bash

./src/info-extractor.sh

```



Some commands may depend on the Linux distribution and installed system utilities.



## Example Output



A sanitized screenshot of the script output will be added here.



<!--

!\[Info Extractor Output](images/info-extractor-demo.png)

-->



## Project Structure



```text
info-extractor/
├── README.md
├── src/
│   └── info-extractor.sh
├── docs/
│   └── info-extractor-report.pdf
└── images/
    └── info-extractor-demo.png
```



## Security & Privacy



The script masks part of the MAC address before displaying it.



The public IP address is displayed by the script and should be redacted before sharing screenshots or output publicly.



Screenshots and documentation included in this repository should not contain credentials or other sensitive system information.



## What I Learned



Through this project I practiced:



- Bash scripting fundamentals

- Linux command-line administration

- Pipes and command chaining

- Text processing with `grep` and `awk`

- Network interface inspection

- Process and memory monitoring

- Service enumeration

- Filesystem analysis

- Handling sensitive information in system output



## Project Documentation



The original project report with explanations of the commands and their purpose is available here:



[View the project report](docs/info-extractor-report.pdf)



## Disclaimer



This project was created for educational purposes as part of my cybersecurity training.



The script is intended to be executed only on systems that the user owns or is authorized to administer.

