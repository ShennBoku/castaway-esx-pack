# 🏝️ Castaway's Hope ESX - A FiveM Learning Pack

[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Discord](https://img.shields.io/discord/1356249888802734132?label=Discord&logo=discord&color=7289DA)](https://discord.gg/XGaNQZ8R2e)
[![Framework](https://img.shields.io/badge/Framework-ESX%20Legacy%201.13.3-red.svg)](https://github.com/esx-framework/esx_core/releases/tag/1.13.3)
[![Support Me on Saweria](https://img.shields.io/badge/Support_Me-Saweria-yellow?logo=buymeacoffee)](https://saweria.co/ShennBoku)

**Castaway's Hope** is an open-source FiveM server pack designed primarily as a **learning foundation** for developers and server owners. Built on the ESX Legacy framework, this project's mission is to provide a transparent and comprehensive look into how a roleplay server functions from the ground up.

By being fully open-source, it offers a unique opportunity to study, modify, and understand the core mechanics of a server, empowering you to build your own unique and secure roleplay experience.

## 🎯 Project Goal: A Learning Foundation, Not a Production Server

It is crucial to understand the purpose of this project before you begin.

> [!IMPORTANT]
> **Professional Services:** For those who require a production-ready server with full setup and unique customizations, I am available for freelance services. Please feel free to reach out to discuss your project. **Contact:** To get started, please join our [Community Discord](https://discord.gg/bfdmZCNmMp) and open a ticket in the designated channel. We'll be happy to discuss your needs there.

### Why it's great for learning:
* **Transparent Codebase:** Study the interactions between different scripts and learn best practices.
* **Solid Foundation:** Use this pack as a boilerplate to develop your own unique scripts and features without starting from zero.
* **Complete Examples:** Contains all the fundamental features of a roleplay server for you to deconstruct and learn from.

### Important Security Considerations:
> [!WARNING]
> Because this is a public, open-source project, its code, logic, and event names are known to everyone. Deploying this pack on a live, public server **without significant modifications** is **not recommended** and poses a security risk.
> 
> True server security comes from well-written, audited code and unique implementation—not from hiding it. This pack provides the starting point to learn and achieve that.

**To make this pack "production-ready," you should:**
1.  **Audit the Code:** Review critical events and functions to ensure they follow secure practices (e.g., proper server-side validation).
2.  **Customize Core Logic:** Change how certain features work to make your server unique.
3.  **Rename Critical Server Events:** This is the most important step to prevent targeted exploits developed for this public base.

## 🛠️ Prerequisites & Local Environment Setup

Before you begin, you must set up your local development environment. This includes the FiveM server files and a database server.

-   **FiveM Server Artifacts:** You need a recent server build to ensure compatibility and stability.
    -   ➡️ **[Check and get the recommended artifact version here](https://artifacts.jgscripts.com/)**

-   **Local Database Server:** A database is required to store all player and server data.
    -   For a modern, fast, and flexible workflow, we **highly recommend using Laragon**. It comes bundled with the **HeidiSQL** database manager, making setup much simpler.
    -   ➡️ **[Download Laragon (Full Edition) Here](https://laragon.org/download/)**
    -   *(The classic **XAMPP** is also a viable alternative if you are more comfortable with it.)*

## ✨ Features (What You Can Learn From)

-   **📖 Educational Focus:** Built with clear, organized code to serve as a powerful learning tool for new and intermediate developers.
-   **Stability & Performance:** Optimized for low resource usage (ms), demonstrating good practice in resource management.
-   **Realistic Inventory System:** Powered by [ox_inventory], providing a modern and intuitive item management experience.

## ⚙️ Installation Guide

> [!NOTE]
> Remember, this pack is intended for local development and learning. Before considering a live deployment, please read the [Project Goal](#-project-goal-a-learning-foundation-not-a-production-server) section above.

A step-by-step video installation guide is coming soon!

## 🔧 Configuration

All essential server settings are managed in a separate configuration folder. This keeps your sensitive keys safe and separate from the core pack files.

1. In the main project directory, locate the `kyg-setup-sample` folder.
2. **Rename** this folder to `kyg-setup`.
3. Open the `connections.cfg` file inside your new `kyg-setup` folder and fill in your details.
4. Open the `admins.cfg` file inside your new `kyg-setup` folder and fill in your details.

> [!IMPORTANT]
> The `kyg-setup` folder is already included in the `.gitignore` file. This is to prevent you from accidentally committing your sensitive keys and passwords to a public repository. The `kyg-setup-sample` folder is what should be updated with any template changes.

## 🙏 Credits and Individual Licenses

This project would not be possible without the incredible work of numerous developers in the FiveM community. We respect and adhere to the license of every resource used.

A complete and detailed list of all included resources, their authors, and their respective licenses can be found in the separate **[CREDITS.md](CREDITS.md)** file.

> [!IMPORTANT]
> We strongly encourage you to support the original creators of these resources.

## 📜 Pack License

The **Castaway's Hope** project as a whole is licensed under the **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License**.

> This "ShareAlike" license is chosen to encourage a learning environment. If you adapt this work, you are encouraged to share your own educational contributions back to the community under the same terms.

---
Developed by the **Kyogo Island Community** | Join us on [Discord](https://discord.gg/XGaNQZ8R2e) to learn and share!