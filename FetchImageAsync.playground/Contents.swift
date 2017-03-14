import UIKit

// Mark - Fetching Extension

extension URL {
    func fetchImage() -> UIImage? {
        do {
            let imageData = try Data(contentsOf: self)
            return UIImage(data: imageData)
        } catch(let error) {
            print(error)
            return nil
        }
    }
}



// Mark - USE

let imageAddress = "https://developer.apple.com/swift/images/swift-og.pn"

// Optional
let imageURL = URL(string: imageAddress)

// Optional
let fetchedImage = imageURL?.fetchImage()

fetchedImage == nil ? print("Fetching failed") : print("Fetching succeeded")