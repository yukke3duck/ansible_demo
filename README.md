# Ansible Demo

This is a repository for learning and demonstrating Ansible.

## Execution Environment

This project uses a containerized execution environment with Docker to ensure consistency across all developers.
You must have Docker installed and running on your local machine.

### How to use

A helper script `runner.sh` is provided to run commands inside the container.
The script will automatically build the required Docker image on its first run.

**Show Ansible version**
```bash
./runner.sh ansible --version
```

**Run ansible-lint**
```bash
./runner.sh ansible-lint
```

**Check playbook syntax**
```bash
./runner.sh ansible-playbook site.yml --syntax-check
```

## Pre-commit Hooks

This project uses `pre-commit` to automatically run `ansible-lint` and a syntax check before each commit. This ensures that code quality is maintained consistently.

### Initial Setup

To use the hooks, you need to install the `pre-commit` tool on your host machine. This requires Python and pip.

1.  **Install pre-commit**
    ```bash
    pip install pre-commit
    ```

2.  **Install the git hook scripts**
    ```bash
    pre-commit install
    ```

Once set up, `ansible-lint` and the syntax check will run automatically each time you run `git commit`. If any issues are found, the commit will be aborted.
