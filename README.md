# Project Buddies

## Project Description

Welcome to Project Buddies, a platform designed for frontend and backend developers, designers, project managers, and QAs to kickstart their new projects! This app allows users to select projects from their feed based on the roles they are interested in, offering functionalities such as viewing tasks and projects, searching for other users, creating posts, and finding teammates. Our mission is to provide effortless project management and enable users to discover projects that align with their interests, empowering them to engage in meaningful projects and bring their ideas to life.

## Disclaimer

This project is developed for UBC's CPSC304: Introduction to Relational Databases class by Irmak Bayir, Kutluay Cakadur, and Selin Uz. It requires XAMPP installation and proper setup to access `localhost:8080/phpmyadmin` and `localhost:8080/feed`. Please be aware of academic dishonesty policies if you use this code.

## Project Setup

### Prerequisites

- **XAMPP**: For serving the application locally.
- **Composer**: For managing dependencies.

### Installation Steps

#### XAMPP

1. **Download**: Visit [Apache Friends](https://www.apachefriends.org/index.html) and download XAMPP for your operating system.
2. **Install**: Follow the installation instructions on the website.

#### Composer

1. **Download**: Visit [Composer's Download Page](https://getcomposer.org/download/).
2. **Install**: Run the downloaded Composer installer. During installation, ensure the path to PHP provided by XAMPP (e.g., `C:\\xampp\\php\\php.exe`) is correctly set.

### Setting Up the Project

#### Environment Configuration

- **Windows**:
  - Add an environment variable for PHP, pointing to XAMPP's PHP folder (e.g., `C:\\xampp\\php`).
- **MacOS**:
  - Ensure XAMPP's PHP is used over MacOS's default PHP. Update your `.bash_profile` or `.zshrc` with XAMPP's PHP path.

#### Create Project Directory

- **Windows**: Navigate to XAMPP's `htdocs` directory and create your project.
- **MacOS**: Similar to Windows, but ensure you have `intl` extension installed. Follow the steps provided for configuring the `intl` extension if needed.

### Database Initialization

1. **Environment File**: Create a `.env` file at the project root with the necessary database configuration.
2. **Database Creation**: Use `phpMyAdmin` to create a database named `project_buddies`.
3. **Seeding Database**: Utilize the provided seeders (`PbSeeder` and `DropTablesSeeder`) for initializing or cleaning up the database.

### Git Configuration

1. Initialize the Git repository in your project folder.
2. Add the remote repository URL provided.
3. Fetch the main branch and set it up for your local project.

## Usage

After setting up, you can access your project at `localhost:8080/feed` to start using Project Buddies.
