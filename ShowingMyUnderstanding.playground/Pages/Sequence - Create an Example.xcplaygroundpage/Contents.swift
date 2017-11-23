/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 200, height: 200)
canvas.fillColor = Color.init(hue: 200, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 200, height: 200)
//creating image.
for x in stride(from: 0, through: 200, by: 10) {
    canvas.fillColor = Color(hue: 0, saturation: 100, brightness: x / 2, alpha: 100)
    canvas.drawRectangle(bottomLeftX: x, bottomLeftY: x, width: x, height: x)
}
canvas.fillColor = Color.red
for w in stride(from: 0, through: 200, by: 50) {
    canvas.drawEllipse(centreX: w, centreY: 10, width: 10, height: 10)
}
canvas.fillColor = Color.red
for w in stride(from: 0, through: 200, by: 50) {
    canvas.drawEllipse(centreX: 10, centreY: w, width: 10, height: 10)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
