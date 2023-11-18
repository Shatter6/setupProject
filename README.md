# Project Setup Script

## Overview

This script automates the setup of the initial folder structure for new web development projects. It creates a predefined set of directories and subdirectories commonly used in web projects. Additionally, the script checks for essential tools like Node.js, npm, and OpenSSL, installs `http-server` if not present, and optionally generates SSL certificates using OpenSSL.

## Prerequisites

- Git Bash or Windows Subsystem for Linux (WSL) for running the script.
- Node.js and npm must be installed for `http-server` installation and functionality.
- OpenSSL is required for generating SSL certificates (optional).

## Folder Structure

The script generates the following folder structure in the specified root directory:


Absolutely, here's a GitHub-friendly version of the README file for your script:

markdown
Copy code
# Project Setup Script

## Overview

This script automates the setup of the initial folder structure for new web development projects. It creates a predefined set of directories and subdirectories commonly used in web projects. Additionally, the script checks for essential tools like Node.js, npm, and OpenSSL, installs `http-server` if not present, and optionally generates SSL certificates using OpenSSL.

## Prerequisites

- Git Bash or Windows Subsystem for Linux (WSL) for running the script.
- Node.js and npm must be installed for `http-server` installation and functionality.
- OpenSSL is required for generating SSL certificates (optional).

## Folder Structure

The script generates the following folder structure in the specified root directory:

- `root/`
  - `server/` - Server-side code (Firebase Functions, etc.)
    - `functions/` - Cloud Functions for Firebase
  - `public/` - Publicly accessible files (HTML, CSS, JS, images)
    - `css/`
    - `js/`
    - `images/`
  - `src/` - Source files for front-end (if using a framework)
    - `components/`
    - `views/`
  - `node_modules/` - Node.js packages

## Usage

1. **Running the Script:**
   - Place the script in a desired location.
   - Open Git Bash or WSL and navigate to the script's location.
   - Run the script using the command: `./setupProject.sh`.
   - When prompted, enter the desired name for your root directory.
   - Follow the on-screen instructions to complete the setup.

2. **Script Actions:**
   - The script checks for Node.js, npm, and OpenSSL installations.
   - It creates the project folder structure in the specified root directory.
   - If `http-server` is not installed, the script installs it globally.
   - If OpenSSL is installed, the script prompts to create SSL certificates.

## Additional Notes

- The script is intended for use in development environments. It simplifies the setup of new web projects by creating a standard folder structure and ensuring necessary tools are installed.
- If SSL certificates are generated, they are self-signed and should only be used for development purposes.
