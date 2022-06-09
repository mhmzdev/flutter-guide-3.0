# AppBar
`AppBar` in `Scaffold` is one of the very core widget in Flutter family. Here's a generic look of `AppBar`


<img src="https://user-images.githubusercontent.com/43790152/172355409-aa7591f8-d285-41a9-b49c-3e09b715176d.png">

## Properties
- `leading`: This could be `Widget` type and is placed at start of the `appBar`
- `leadingWidth`: This is `double` value for `leading` width to decide how much space it will take
- `title`: This could be `Widget` type, acts as similar to `title` of `ListTile`.
- `centerTitle`: A `bool` that decides whether to place it in center of `appBar` or not.
- `elevation`: The shadow/elevation value of full `appBar` it takes `double`
- `backgroundColor`: Simply the background color of `appBar` takes `Color` type.
- `shadowColor`: The color of `elevation`, takes `Color` type.
- `foregroundColor`: Color of everything at front of `appBar`, takes `Color` type.
- `surfaceTintColor`: Color of `appBar` background color overlay tint. Type `Color`.
- `automaticallyImplyLeading`: Whether to implement `leading` widget on its own or not. e.g. Back Button appears by default if route to new screen.

## leading
Below code shows the `leading` widget in the `appBar`.

```dart
BackButton(
onPressed: () => Navigator.pop(context),
color: Theme.of(context).brightness == Brightness.light
    ? Colors.black
    : Colors.white,
),
```
