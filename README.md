# Stopwatch Flutter App

A simple and efficient Stopwatch app built with Flutter, designed to track time in **hours**, **minutes**, **seconds**, and **milliseconds**. The app includes intuitive controls for **starting**, **pausing**, and **stopping** the timer.

# Screenshot

## To Explore [Tap Here](https://stopwatch-flutter.netlify.app/)

When using a browser’s **Inspect** tool to view a website in **Phone mode** (mobile view), follow these steps:

1. **Right Click** on the webpage.
2. Select **Inspect** (or press `Ctrl + Shift + I` on Windows/Linux or `Cmd + Option + I` on macOS).
3. Once the developer tools open, locate the **device toolbar** icon at the top of the dev tools panel. It looks like a small phone and tablet symbol.
4. Click on the icon to toggle **Phone mode** (also known as **Responsive Design Mode**).
5. You can now view the site as it would appear on a phone or tablet. There is an option to select different devices from the dropdown at the top to simulate screen sizes, such as iPhone, Pixel, Galaxy, etc.

## Features

- **Accurate Time Tracking**: Tracks hours, minutes, seconds, and milliseconds.
- **User Controls**:
  - **Start**: Begin the stopwatch from 00:00:00:000 (HH:MM:SS:MS).
  - **Pause**: Pause the stopwatch at the current time.
  - **Stop**: Reset the stopwatch back to zero.
- **Responsive Design**: Compatible with all screen sizes.
- **Efficient State Management**: Optimized performance for accurate timing.

## App Interface

- **Main Display**: The app prominently displays the elapsed time in the format **HH:MM:SS:MS**.
  - `HH`: Hours
  - `MM`: Minutes
  - `SS`: Seconds
  - `MS`: Milliseconds
- **Control Buttons**:
  - `Start`: Begins the timer from the initial state or resumes from the paused state.
  - `Pause`: Temporarily halts the stopwatch without resetting the time.
  - `Stop`: Resets the time back to zero.

## Installation

1. **Clone the repository**:
   ```
   git clone <repository-url>
   ```
2. **Navigate to the project directory**:
   ```
   cd stopwatch_flutter_app
   ```
3. **Install dependencies**:
   ```
   flutter pub get
   ```

4. **Run the app**:
   ```
   flutter run
   ```

## Usage

- **Starting the Stopwatch**: Tap the `Start` button to begin timing.
- **Pausing the Stopwatch**: Tap the `Pause` button to temporarily stop timing without resetting.
- **Stopping the Stopwatch**: Tap the `Stop` button to reset the timer back to 00:00:00:000.

## Customization

You can customize the stopwatch's appearance and functionality by editing the corresponding Flutter widgets and state management logic in the code.
