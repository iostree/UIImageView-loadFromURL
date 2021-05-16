# UIImageView-loadFromURL
ios UIImageView+loadFromURL.swift will get the images directly download from URL to phone.

[![Platform](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat)](https://developer.apple.com/iphone/index.action)
[![Language](https://img.shields.io/badge/language-Swift-brightgreen.svg?style=flat)](https://developer.apple.com/swift)
[![License](https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://mit-license.org)

## Overview
* Manual drag & drop the class
* Swift 5.0 above
* Xcode 11 above
* Download image from URL
* Download image from URL & added to cache
* Default image option

```swift
let url:URL? = URL(string: "https://raw.githubusercontent.com/Sivabalaa/images/master/iOSTreeLogo.png")
```
#
Use the below code to get image from URL

```swift
imageView.setImage(from: url, placeholder: UIImage(named: "sample"))
```
#
or 

```swift
imageView.setImage(from: url)
```
#
If you are loading multiple image in [`UITableview`](https://developer.apple.com/documentation/uikit/uitableview) or in [`UICollectionView`](https://developer.apple.com/documentation/uikit/uicollectionview)

Use the below code to get image from URL & added to cache
```swift
imageView.setImage(from: url, isCache: true)
```
#
or 
```swift
imageView.setImage(from: url, placeholder: UIImage(named: "sample"), isCache: true)
```
#
### Download the file here
[UIImageView+loadFromUrl.swift](https://github.com/iostree/UIImageView-loadFromURL/blob/master/UIImageView%2BloadFromURL.swift)

[![Github](https://img.shields.io/badge/Github-release-red.svg)](https://github.com/iostree/UIImageView-loadFromURL)


License
=================
UIImageView+loadFromUrl is distributed under the [MIT
license ](https://mit-license.org).

- - -

Let's grow together 🌱

Cheers 🍻
