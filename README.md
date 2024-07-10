# ResponsiveText


Flutter widget for responsive text showing, it will automatically adapt to your screen size and it is also fully customizable

**Show some ❤️ and star the repo to support the project**

![]([https://raw.githubusercontent.com/leisim/auto_size_text/master/.github/art/maxlines.gif](https://github.com/Vyshnavtr0/responsive_text/assets/82934724/c4411fe0-e96d-45b9-b29e-a8c5b51abbb7))

## Usage

`ResponsiveText` behaves exactly like a `Text`. The only difference is that it resizes text to fit within its bounds.

```dart
 ResponsiveText(
            style: TextStyle(color: Colors.black),
            minTextSize: 5,
            scale: 0.05,
            maxTextSize: 50,
            text:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          )
```

