# blog-az-terraform-stacks
Sample project to explore Terraform Stacks [BETA]

## Preparation
Steps to initialize this project.

### Install Terraform Stack CLI
The terraform-stacks-cli is a command-line tool for validating, initializing, and testing Stack configurations.
```bash
brew tap hashicorp/tap
brew install hashicorp/tap/tfstacks
```

Install inside this codespace configuration.
```bash
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform-stacks-cli
```

Verify installation.

```bash
tfstacks --version
```
