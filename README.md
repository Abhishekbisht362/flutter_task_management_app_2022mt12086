# cross_platform_flutter_assignment_2022mt12086

# Task Management Flutter App

A simple task management app built with Flutter and Parse Server, which allows users to add, edit, and delete tasks.

## Features

- Display tasks list
- Create new task
- Update existing task(s)
- Delete existing task(s)

## Technologies Used

- **Flutter:** The UI framework used to build the mobile app.
- **Parse Server:** A flexible and open-source backend for your mobile, web, and desktop apps.
- **Back4App:** A backend service based on Parse Server, providing hosted Parse services.

## System Requirements

Before you begin, ensure your development environment meets the following requirements:

- **Flutter:** Ensure you have Flutter installed. Follow the instructions on the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).
- **Dart:** The project uses Dart as the programming language. Dart comes bundled with Flutter.
- **Parse Server:** You need access to a Parse Server instance. You can set up your own Parse Server or use a hosted service like Back4App. Update the Parse Server configuration in `lib/main.dart` with your Parse Server information.
- **Visual Studio Code:** [Download Visual Studio Code](https://code.visualstudio.com/download)

## Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/Abhishekbisht362/flutter_task_management_app_2022mt12086.git
   
2. Navigate to the cloned repository:

cd flutter_task_management_app_2022mt12086

3. Open the project in Visual Studio Code:

code .

4. Task Creation in Back4App:

This app connects to Back4App for task data storage. Ensure you have an active Back4App account and configure the app with your Back4App API keys.

Sign up for a Back4App account.
Create a new app on Back4App.
Obtain your Back4App API keys from the app settings.
Configure your Flutter app with the Back4App API keys.
Update Parse Server Configuration:

Update the Parse Server configuration in lib/main.dart with your Parse Server information:

static const String parseServerUrl = 'https://parseapi.back4app.com';
static const String parseApplicationId = 'YOUR_PARSE_APPLICATION_ID';
static const String parseRestApiKey = 'YOUR_PARSE_REST_API_KEY';

5. Install dependencies:

flutter pub get

6. Run the app:

flutter run

Select a device (Windows/Chrome/Edge) to run the app.
