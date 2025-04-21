# User and Groups Management Script

## Overview

This is a Bash script designed to automate the creation of directories, user groups, and users, and assign the appropriate permissions. It is particularly useful for managing Linux environments with organized user roles and directories. 

## Features

- **Directory Creation**:
  - `/publico`: Public directory with full permissions for everyone.
  - `/adm`: Administrative directory with restricted access.
  - `/ven`: Sales directory with restricted access.
  - `/sec`: Security directory with restricted access.

- **Group Creation**:
  - Administrative Group: `GRP_ADM`
  - Sales Group: `GRP_VEN`
  - Security Group: `GRP_SEC`

- **User Creation**:
  - Administrative users (`GRP_ADM`): Carlos, Maria, João.
  - Sales users (`GRP_VEN`): Sebastiana, Roberto, Débora.
  - Security users (`GRP_SEC`): Josefina, Rogério, Amanda.

- **Directory Ownership**:
  - Directories are assigned specific group ownership.

- **Permissions Management**:
  - `/publico`: Accessible by all users (777 permissions).
  - `/adm`, `/ven`, `/sec`: Restricted access for group members (770 permissions).

## Usage

To execute the script, ensure you have the necessary permissions to run it and execute the following command:

```bash
./script.sh
```

> Note: The script requires `openssl` to generate secure passwords for users.

## Why Use This Script?

This script helps simplify user and group management in Linux environments, ensuring organized and secure permissions.

## License

This project is open-source and can be modified according to your needs.
