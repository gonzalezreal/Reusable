# Reusable

![Swift 5.1](https://img.shields.io/badge/Swift-5.1-orange.svg)
[![Swift Package Manager](https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager)
[![Twitter: @gonzalezreal](https://img.shields.io/badge/twitter-@gonzalezreal-blue.svg?style=flat)](https://twitter.com/gonzalezreal)

Reusable is a Swift µpackage that provides a type-safe way for cell registration and dequeuing in both table and collection views. It is based on [this post](https://medium.com/@gonzalezreal/ios-cell-registration-reusing-with-swift-protocol-extensions-and-generics-c5ac4fb5b75e) I wrote a few years ago while I was exploring some of the Swift language features.

## Usage

To be able to register and reuse a cell or supplementary view in a type-safe way, the view must conform to the `ReusableView` protocol:

```Swift
extension PosterItemCell: ReusableView {}
```

The default implementation of `ReusableView` will provide a reuse identifier based on the class name.

Cells implemented with **Interface Builder** must also conform to the `NibLoadableView` protocol:

```Swift
extension PosterItemCell: ReusableView, NibLoadableView {}
```

Once the cell or supplementary view is ready, you can register it in a collection or table view by indicating its type:

```Swift
func viewDidLoad() {
  super.viewDidLoad()
  collectionView.register(PosterItemCell.self)
  ...
}
```

Likewise, you can dequeue a cell previously registered in this way just by indicating its type:

```Swift
func collectionView(_: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(PosterItemCell.self, for: indexPath)
    ...
    return cell
}
```

## Installation
**Using the Swift Package Manager**

Add Reusable as a dependency to your `Package.swift` file. For more information, see the [Swift Package Manager documentation](https://github.com/apple/swift-package-manager/tree/master/Documentation).

```
.package(url: "https://github.com/gonzalezreal/Reusable", from: "1.0.0")
```

## Help & Feedback
- [Open an issue](https://github.com/gonzalezreal/Reusable/issues/new) if you need help, if you found a bug, or if you want to discuss a feature request.
- [Open a PR](https://github.com/gonzalezreal/Reusable/pull/new/master) if you want to make some change to `Reusable`.
- Contact [@gonzalezreal](https://twitter.com/gonzalezreal) on Twitter.
