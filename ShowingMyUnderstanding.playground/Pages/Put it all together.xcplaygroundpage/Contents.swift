/*:
 [Previous](@previous) / [Next](@next)
 
 # Put it all together
 
 Create an example that sequence, conditionals, and iteration to produce a simple image.
 
 The image need not be eye-catching or elaborate – it should simply demonstrate your ability to combine these programming structures.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)
canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
canvas.lineColor = Color.black
canvas.drawLine(fromX: 50, fromY: 250, toX: 250, toY: 50, lineWidth: 10)
canvas.drawLine(fromX: 250, fromY: 50, toX: 450, toY: 250, lineWidth: 10)
canvas.drawLine(fromX: 450, fromY: 250, toX: 250, toY: 450, lineWidth: 10)
canvas.drawLine(fromX: 250, fromY: 450, toX: 50, toY: 250, lineWidth: 10)
canvas.lineColor = Color.yellow
canvas.drawLine(fromX: 50, fromY: 250, toX: 150, toY: 250, lineWidth: 10)
canvas.drawLine(fromX: 450, fromY: 250, toX: 350, toY: 250, lineWidth: 10)
canvas.drawLine(fromX: 250, fromY: 450, toX: 250, toY: 350, lineWidth: 10)
canvas.drawLine(fromX: 250, fromY: 50, toX: 250, toY: 150, lineWidth: 10)
canvas.drawShapesWithBorders
canvas.borderColor = Color.yellow
let number = random(from: 0, toButNotIncluding: 2)
if number == 1 {
    canvas.fillColor = Color.white
}
if number == 0 {
    canvas.fillColor = Color.blue
}
canvas.drawEllipse(centreX: 250, centreY: 250, width: 200, height: 200, borderWidth: 10)
canvas.drawShapesWithBorders
canvas.borderColor = Color.black
for x in stride(from: 50, through: 450, by: 100){
    canvas.fillColor = Color.red
    canvas.drawRectangle(centreX: 250, centreY: x, width: 25, height: 25)
}
for x in stride(from: 50, through: 500, by: 100){
    canvas.fillColor = Color.red
    canvas.drawRectangle(centreX: x, centreY: 250, width: 25, height: 25)
}
for x in stride(from: 50, through: 450, by: 25) {
    canvas.fillColor = Color.init(hue: x, saturation: x, brightness: x, alpha: x)
    canvas.drawEllipse(centreX: x, centreY: x, width: 50, height: 50)
}
for x in stride(from: 50, through: 450, by: 25){
    canvas.fillColor = Color.init(hue: x+550, saturation: x+550, brightness: x+550, alpha: x+550)
    canvas.drawEllipse(centreX: 500-x, centreY: x, width: 50, height: 50)
}


// Replace this comment and add your code below...


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
