# Flutter Watchlist App

##  Overview
This project implements a stock watchlist where users can reorder (swap) stocks using drag-and-drop functionality. The app is built using Flutter and follows the BLoC architecture pattern for state management.

##  Features
- Display list of stocks
- Drag and drop to reorder stocks
- State management using BLoC
- Clean and reusable UI components

##  Architecture
The app uses the BLoC (Business Logic Component) pattern:
- **Event**: Triggered when user reorders a stock
- **State**: Holds updated list of stocks
- **Bloc**: Handles reorder logic and emits new state

##  Reorder Logic
- User drags a stock item
- `onReorder` is triggered
- Event is sent to BLoC
- BLoC updates the list
- UI rebuilds using `BlocBuilder`

##  Project Structure
lib/
├── models/
├── bloc/
├── ui/
└── widgets/


## 🛠️ Tech Stack
- Flutter
- Dart
- flutter_bloc

## 📌 Future Improvements
- Integrate real-time stock API
- Add animations
- Improve UI/UX further