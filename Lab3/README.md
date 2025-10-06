# Lab3 Vagrant Flask Application

This project includes a `Vagrantfile` configured to automatically set up and run a Flask web application in a Debian VM.

## What's in the Vagrantfile

The `Vagrantfile` contains:

- **VM Configuration**: Debian Bookworm 64-bit box
- **Port Forwarding**: Maps host port 5000 to guest port 5000
- **Inline Provisioning**: Complete setup script embedded in the Vagrantfile that:
  - Updates the system packages
  - Installs Python 3, pip, and virtual environment tools
  - Creates a Python virtual environment at `/opt/flask_env`
  - Installs Flask in the virtual environment (avoiding pip3 "externally managed" errors)
  - Creates a Flask application (`/vagrant/hello.py`) with:
    - Main route at `/` returning "Hello, World!"
    - Health check endpoint at `/health`
    - Runs on all interfaces (0.0.0.0:5000)
  - Starts the Flask app automatically in the background

## How it works

- Everything is self-contained in the `Vagrantfile` - no external scripts needed
- On `vagrant up`, the VM is created and all provisioning runs automatically
- Flask app starts immediately and is accessible at `http://localhost:5000`

## Running the Application

Open PowerShell in this directory and run:

```powershell
vagrant up
```

This will:

1. Download and create the Debian VM
2. Run all provisioning automatically
3. Start the Flask application
4. Make it accessible at `http://localhost:5000`

### Accessing the Application

- **Main page**: `http://localhost:5000`
- **Health check**: `http://localhost:5000/health`

### Managing the VM

- **Re-run provisioning**: `vagrant provision`
- **SSH into VM**: `vagrant ssh`
- **Stop VM**: `vagrant halt`
- **Destroy VM**: `vagrant destroy`
- **View Flask logs**: `vagrant ssh` then `cat /vagrant/flask.log`

## Features

- **Self-contained**: Everything runs from the Vagrantfile
- **Virtual Environment**: Uses Python venv to avoid system package conflicts
- **Automatic Setup**: No manual configuration required
- **Background Service**: Flask runs automatically in the background
- **Port Forwarding**: Access from host machine via localhost:5000

## Troubleshooting

- If `vagrant up` fails, ensure VirtualBox and Vagrant are installed
- Check Flask logs: `vagrant ssh` then `cat /vagrant/flask.log`
- Restart Flask manually: `vagrant ssh` then `/opt/flask_env/bin/python /vagrant/hello.py`
