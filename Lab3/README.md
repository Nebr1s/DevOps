# Lab3 Vagrant provisioning

This project includes a `Vagrantfile` configured to run `provision.sh` during provisioning.

How it works

- `Vagrantfile` contains: `config.vm.provision "shell", path: "provision.sh"`
- On `vagrant up` (or `vagrant provision`) Vagrant copies `provision.sh` to the guest and executes it.

Running (Windows PowerShell)

Open PowerShell in this directory and run:

```powershell
vagrant up
```

To re-run the provisioner after the VM is already running:

```powershell
vagrant provision
```

Notes

- On Windows hosts, file executable bit is not preserved when copying into the VM. Vagrant will still execute the file by passing it to the guest shell.
- If you edit `provision.sh`, re-run `vagrant provision` to apply changes.
- Provisioning creates `provision_logs/last_provision.txt` under the project folder (shared `/vagrant`).

Troubleshooting

- If `vagrant up` fails due to missing plugins or provider, ensure VirtualBox (or chosen provider) and Vagrant are installed.
- For permission issues inside the guest, edit the script to use `sudo` where needed.
