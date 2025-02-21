# 🚀 Galactic Adventure App (SAP CAP + Fiori)

The **Galactic Adventure App** is a **SAP CAP (Cloud Application Programming) project** that allows **spacefarers** to register, manage their profiles, and receive onboarding emails.
The backend is built with **SAP CAP (Node.js)**, and the frontend is a **Fiori Elements** application.

## 📌 Features

- **SAP CAP Backend** (OData v4)
- **Fiori Elements UI**
- **Email Notifications** (via Nodemailer)
- **SQLite Database for Local Development**
- **Authentication with Mocked Users**
- **Role-based Access Control** (Admin & Viewer)

## 🛠️ Setup & Installation

### 1️⃣ **Prerequisites**

Make sure you have:

- **Node.js**
- **SAP CAP CDS CLI** (`npm install -g @sap/cds-dk`)
- **SQLite** (for local development)

### 2️⃣ **Install Dependencies**

```sh
npm install
```

### 3️⃣ Start the CAP Backend

```sh
npm start
```

This will:

Start the OData v4 service at:
http://localhost:4004

Automatically watch for changes in CAP files

### 4️⃣ Run the Fiori App

In a new terminal:

cd ./app/fioriapp/

```
npm fiori-start
```

Your Fiori UI should be available at:
http://localhost:8080/index.html

## 📡 API Endpoints (OData v4)

The backend exposes OData v4 services via cosmicService:

🔹 GET Spacefarers

```
GET http://localhost:4004/odata/v4/cosmic/Spacefarers
```

🔹 POST Create a Spacefarer

```
POST http://localhost:4004/odata/v4/cosmic/Spacefarers
Content-Type: application/json
{
  "name": "John Doe",
  "email": "john.doe@example.com",
  "originPlanet": "Mars",
  "department_ID": "12345"
}
```

📌 Triggers a welcome email! 🎉

## 📩 Email Notifications

The email service sends a welcome email when a new Spacefarer is created.

📌 Configuration:

- Email settings are in /srv/email-config.js
- Uses Mailtrap SMTP (for testing)

## 🔐 Authentication & Roles

The CAP service supports mocked authentication:

- admin → SpacefarerAdmin
- alice & bob → SpacefarerViewer

📌 Modify package.json (cds.requires.auth) to change roles.
