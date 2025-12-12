# SysAdmin Starter Pack – Mini-Challenge

## Overview
 The project uses a Bash script to create directory structures, generate configuration/log files, manage permissions, and display system information in a clean and repeatable way.

This challenge simulates a real DevOps onboarding scenario where automating basic environment setup is essential for efficiency and consistency.

---

## Features
The `setup_environment.sh` script automates the following:

### 1. Directory Setup
- Automatically creates the required folder structure:
    - `logs/`
    - `configs/`
    - `scripts/`

- Includes logic to detect existing directories and avoid recreating them.

### 2. File Generation
- Creates and initializes:
    - `logs/system.log`
    - `configs/app.conf`
    - `scripts/backup.sh`

Each file is populated with sample content

### 3. Permission Management
Configures correct file permissions:
- `system.log` → `644`
- `app.conf` → `444`
- `backup.sh` → `755`

### 4. Environment Summary
Displays:
- A directory tree listing (`tree`)
- A recursive permissions listing (`ls -lR`)

---

## Usage Instructions

### 1. Clone the Repository
```bash
git clone  https://github.com/Ayamigah16/sys-admin-starter-pack.git
cd sys-admin-starter-pack
```
### 2. Make the Script Executable
```bash
chmod +x setup_environment.sh
```

### 3. Run the Script
```bash
./setup_environment.sh
```

- **Ouput**:
![Output](images/Screenshot%202025-12-12%20153857.png)

### 4. Verify Output

- Confirmation messages for created/existing directories

- File creation messages

- Final directory structure

- Permissions listing