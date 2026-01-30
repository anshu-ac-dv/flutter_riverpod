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


## Flutter Riverpord StateLess Widget

```dart
// This is the StateLess Widget for riverpord
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref, ) {
    final answer = ref.watch(hello);
    final ge = ref.watch(age);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(answer +" "+ge.toString()),
      ),
    );
  }
}
```

## Flutter Riverpord StateFull Widget

```dart
// This is a stateful widget for riverpord
class HomeScreen2 extends ConsumerStatefulWidget {
  const HomeScreen2({super.key});

  @override
  ConsumerState<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends ConsumerState<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    final answer = ref.watch(hello);
    final ge = ref.watch(age);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SafeArea(child: Text(answer)),
    );
  }
}

```

## Handling multiple state using StateNotifierProvider

