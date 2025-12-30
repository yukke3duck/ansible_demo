# Ansible Project for Web and Proxy Server Setup

This document outlines the process of setting up a web server and a proxy server using Ansible.

## 1. Project Overview

### 1.1. Goal

The goal of this project is to automate the setup and configuration of the following servers:

*   **Web Server:** Hosts web applications.
*   **Proxy Server:** Acts as an intermediary for requests to the web server.

### 1.2. Target Servers

*   **Web Server:**
    *   **OS:** Windows 11
*   **Proxy Server:**
    *   **OS:** Ubuntu 22.04

## 2. Ansible Structure

This project will be built from scratch as there are no existing playbooks.

## 3. Server Configuration

### 3.1. Web Server (Windows 11)

*   **Web Server Software:** IIS (Internet Information Services)
*   **Additional Software:**
    *   Sakura Editor

### 3.2. Proxy Server (Ubuntu 22.04)

*   **Proxy Software:** HAProxy
*   **Configuration:**
    *   Forward traffic to the web server based on a specific domain and source IP address.

## 4. Playbook Details

### 4.1. Proxy Server (HAProxy)

*   **Configuration:**
    *   **Frontend:** Listen for traffic for `web.local`.
    *   **Backend:** Forward traffic to the web server.
    *   **ACL (Access Control List):** Allow traffic from `0.0.0.0/0` (any IP). This will be updated later.

### 4.2. Web Server (IIS & Sakura Editor)

*   **IIS:**
    *   Ensure the default website is running. No special site configuration is required.
*   **Sakura Editor:**
    *   **Installation Method:** Download the installer from the official website and execute it.

## 5. Next Steps

1.  Create the Ansible project structure (inventory, roles).
2.  Develop the `haproxy` role for the proxy server.
3.  Develop the `web_server` role for the Windows server (IIS and Sakura Editor).
4.  Create the main playbook to apply these roles to the target servers.

## 6. Execution Environment

The Ansible playbooks in this project are designed to be executed via AWX.

## Gemini Added Memories
- After modifying any Ansible code, I must always run `./runner.sh ansible-lint` to validate the changes.
