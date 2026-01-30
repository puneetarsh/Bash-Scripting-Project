# Bash Scripting & Web Server Automation

A collection of Bash scripting exercises and a small real-world automation project that deploys a static HTML website to a Linux web server.

This repository is intended as both practice and demonstration of Bash-driven DevOps automation.

---

## Project overview

- Purpose: Practice Bash scripting fundamentals and demonstrate automating a web server deployment (installing Apache/HTTPD, deploying a static site).
- Primary feature: `multios_websetup.sh` — a multi-OS script that detects the Linux distribution (Debian/Ubuntu or RHEL/CentOS), installs and configures the web server, deploys an HTML template to `/var/www/html`, and performs cleanup.
- Website template: "2098 Health" from Tooplate (not authored by this repo owner). Used for learning/demonstration only. Design/UI credits remain with the original creator: https://www.tooplate.com

---

## Repository (selected files)

Note: If filenames in your working tree differ, update them consistently. The list below gives each script's purpose.

- `1_firstscript.sh` — Basic bash script example
- `2_websetup.sh` — Basic web server setup
- `3_vars_websetup.sh` — Web setup using variables
- `4_args.sh` — Script-arguments examples
- `5_args_websetup.sh` — Web setup using arguments
- `6_command_subs.sh` — Command substitution examples
- `7_userinput.sh` — Handling user input
- `8_if1.sh` — If-condition example
- `9_if1.sh` — If-else example
- `10_ifelif.sh` — If-elif-else example
- `11_monit.sh` — Monitoring script example
- `12_monit.sh` — Monitoring example (review duplicate names)
- `13_for.sh` — For-loop example
- `14_for.sh` — For-loop example (review duplicate names)
- `15_while.sh` — While-loop example
- `16_while.sh` — While-loop example (review duplicate names)
- `dismantle.sh` — Cleanup / teardown script
- `multios_websetup.sh` — Main multi-OS automation (installs, deploys, enables services)

Tip: There appear to be duplicate or similar filenames (e.g., multiple `if`, `for`, `while`, and `monit` scripts). Consider renaming duplicates to clearer unique names (for example `08_if.sh`, `09_if_else.sh`) to avoid confusion.

---

## Requirements / Prerequisites

- Linux (Debian/Ubuntu or RHEL/CentOS). Tested with: Ubuntu 20.04 / 22.04 and CentOS 7 / 8 (specify exact versions you tested).
- Bash shell (sh-compatible)
- Internet connectivity from the target machine (to download packages / template)
- sudo or root privileges (scripts install packages and write to system paths)
- Recommended: run inside a VM (Vagrant) for testing to avoid accidental changes to a production machine

---

## Quick start

1. Make the scripts executable:
   ```bash
   chmod +x *.sh
   ```

2. Run the main automation (requires root privileges):
   ```bash
   sudo ./multios_websetup.sh
   ```

What the main script does (high level):
- Detects OS (Ubuntu / CentOS)
- Installs Apache (`apache2`) or HTTPD
- Starts and enables the service
- Downloads the Tooplate HTML template
- Deploys the template to `/var/www/html`
- Restarts the web server and removes temporary files

---

## How to verify

- From the server itself:
  ```bash
  curl -I http://localhost/
  ```
  Expect an HTTP 200 response (or similar).

- From a remote machine:
  - Open `http://<server-ip>/` in a browser and confirm the template renders.
  - Or:
    ```bash
    curl -I http://<server-ip>/
    ```

- Check service status:
  - Debian/Ubuntu:
    ```bash
    sudo systemctl status apache2
    ```
  - RHEL/CentOS:
    ```bash
    sudo systemctl status httpd
    ```

---

## Troubleshooting

- Package installation fails:
  - Ensure network connectivity.
  - Update package metadata first:
    - Ubuntu/Debian: `sudo apt update`
    - CentOS/RHEL: `sudo yum makecache` or `sudo dnf makecache`
- Firewall blocks port 80 (CentOS example):
  ```bash
  sudo firewall-cmd --permanent --add-service=http
  sudo firewall-cmd --reload
  ```
- Permission denied when copying to `/var/www/html`:
  - Ensure you run the script with `sudo` or as root.
- If template download URL changes or is unavailable, update the download link inside `multios_websetup.sh`.

---

## Best practices & recommendations

- Rename similarly named scripts to unique, descriptive filenames.
- Add a `LICENSE` file (recommended: MIT) to permit reuse.
- Add `CONTRIBUTING.md` to describe how others can help or submit changes.
- Consider adding a small CI (GitHub Actions) to run linting checks for shell scripts (shellcheck).

---

## Learning outcomes

This project demonstrates:
- Bash scripting fundamentals (variables, conditionals, loops, arguments)
- OS-aware shell scripting
- Server provisioning and deployment automation
- Simple verification and cleanup patterns for automation scripts

---

## Contributing

- Open an issue to discuss larger changes.
- Create a pull request with a descriptive title and a summary of changes.
- If you add or change behavior, include verification steps and expected output.

---

## License & credits

- Add a LICENSE file to clarify reuse terms (MIT recommended if you want permissive reuse).
- Website template credit: Tooplate — "2098 Health" (used for learning/demonstration only). All design/UI credits belong to the original creator: https://www.tooplate.com

---




















