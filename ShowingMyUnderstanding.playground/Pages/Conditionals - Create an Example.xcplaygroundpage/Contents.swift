/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a conditional statement to respond to random number generation.
  
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)
let number = random(from: 0, toButNotIncluding: 2)
if number == 1 {
    canvas.fillColor = Color.white
}
if number == 0 {
    canvas.fillColor = Color.blue
}
canvas.drawEllipse(centreX: 250, centreY: 250, width: 200, height: 200, borderWidth: 10)
// Replace this command and add your code below...

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
