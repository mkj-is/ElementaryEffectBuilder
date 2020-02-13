# ElementaryEffectBuilder

[**Elementary**](https://github.com/mkj-is/Elementary) uni-directional architecture extension in Swift. This package function builder for creating and combining effects.
It is inspired by Redux sagas.

## Installation

When using Swift package manager install using Xcode 11+ or add following line to your dependencies:

```swift
.package(url: "https://github.com/mkj-is/ElementaryEffectBuilder.git", from: "0.1.0")
```

## Usage

Main feature of this package is combining effects function into one:

```swift
let appEffect: Effect<AppState, AppAction> = buildEffect {
    createNetworkEffect()
    createPersistenceEffect()
    createUrlEffect()
}
```

Also `take` functions for building effects are provided.
See the following example:

```swift
func createUrlEffect(application: UIApplication = .shared) -> Effect<AppState, AppAction> {
    take(
        AppAction.openHomepage,
        execute: { application.open(URL(string: "https://mkj.is")!) }
    )
}
```

## Contributing

All contributions are welcome.

Project was created by [Matěj Kašpar Jirásek](https://github.com/mkj-is).

Project is licensed under [MIT license](LICENSE.txt).


