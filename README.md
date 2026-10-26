
# IconLab

The Flutter `Icon` widget displays symbols such as hearts, stars, and home icons, with customizable size and color.

## Demo



## How to run

1. Install Flutter and open a terminal in this project folder.
2. Get the packages:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

## Three attributes

### 1. size

- **What it changes:** It changes how large or small the icon appears.
- **Default:** Usually 24 logical pixels when no other icon size is specified by the theme.
- **Why a developer changes it:** To make an icon easier to see or fit the design.

### 2. color

- **What it changes:** It changes the icon's color.
- **Default:** The color comes from the current icon theme or other applicable theme defaults.
- **Why a developer changes it:** To match the design or make an icon stand out.

### 3. icon

- **What it changes:** It changes which symbol is displayed, such as a home, heart, star, or Wi-Fi symbol.
- **Default:** There is no universal default symbol; the developer supplies an icon.
- **Why a developer changes it:** To communicate an action or display the right symbol for the situation.

## How the heart works

In my demo, tapping the heart switches it between an outlined grey heart and a solid red heart because the app updates the `liked` value and rebuilds the icon using `setState()`.

The slider also changes the heart's size.

## Credits

Built with help from the Flutter documentation and my own practice with the `Icon` widget.
