# tonal_assessment

A new Flutter project. Built and tested on for Android Emulator

## Getting Started

Run `flutter run` to start project. Project build and tested on a Pixel 4 emulator but should also work for iOS, might be some slight style issues.

## Assumptions

The one question I had was if this should be a moble app build in flutter or a flutter web app. All the examples of accepted technologies were mobile (React Native, Android, Swift) so I assumed that it shhould be a mobile application.

I wanted to use the provided styles but they were much too big for a mobile screen, so I added a media query to modify the base styles based on a smaller `(<= 900)` screen size. I used this to modify font size and preserved the rest of the styles. This approach should allow for the reuse of this widget for the full sized web app where we can show the larger component.

## Future Steps

If adding aditional features I would like to add a way to remove an entry. Additionally users might want to edit the entry. We could build this on the existing widget and form being used.
