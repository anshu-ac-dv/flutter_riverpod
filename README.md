# Flutter Riverpod

In Flutter, "State" is any data that can change while your app is running—like the temperature in your weather app, the items in a shopping cart, or whether a user is logged in.

## State Management is the system you use to:

>* Store that data somewhere organized.
>* Update the data when something happens (like a button click or an API call).
>* Notify the UI to rebuild only the specific parts that need to change.

## Riverpod

Riverpod 3.0 is the industry-standard state management library in 2026. It was created by the same developer as "Provider" but fixed all of Provider's flaws.

>* Compile-Time Safety: If you make a mistake, your code won't even run. It catches errors before you test the app.
>* No "BuildContext" Required: Unlike older methods, you can access your data from anywhere—even outside of widgets.
>* Automatic Caching: If you fetch weather data once, Riverpod can remember it so it doesn't waste battery/data fetching it again.
>* Auto-Dispose: It automatically cleans up memory when a screen is closed, preventing your app from slowing down.


