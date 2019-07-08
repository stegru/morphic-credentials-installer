# Morphic Credentials

Morphic Credentials is a tiny Windows Installer (MSI) that installs the Morphic client credentials into a secure area of the filesystem.

## Usage

The secret needs to be generated manually and copied into a file called secret.txt.

Run build.ps1

Remember, DO NOT commit the secret.txt file. :)

# Site Config Installer

An installer for the siteConfig file can also be created:

    build-config.ps1

This will put the provided `siteconfig.json5` into an MSI. The installer will:
- Install `siteConfig.json5` in the correct location.
- Remove the per-user `defaultSettings.json5` files from all users on the machine.
