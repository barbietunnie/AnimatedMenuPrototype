# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Babatunde Adeyemi"
	twitter: ""
	description: ""


# Import file "SweetStuff"
sketch = Framer.Importer.load("imported/SweetStuff@1x")

device = Framer.Device.screen

blue = "rgb(97, 213, 242)"
green = "rgb(150, 229, 144)"
yellow = "rgb(226, 203, 98)"
red = "rgb(231, 138, 138)"

container = new Layer
		width: device.width
		height: device.height
		backgroundColor: "rgba(255, 255, 255, 1)"
		borderRadius: 5
		clip: true

menuHeight = container.height/4
menuWidth = container.width

cookieMenu = new Layer
		height: menuHeight
		width: menuWidth
		x: 0
		y: 0
		backgroundColor: blue
		shadowY: 2
		shadowBlur: 40
		shadowSpread: 3
		shadowColor: "rgba(25, 25, 25, 0.3)"

cupcakeMenu = new Layer
		height: menuHeight
		width: menuWidth
		x: 0
		y: cookieMenu.y + cookieMenu.height
		backgroundColor: green
		shadowY: 2
		shadowBlur: 40
		shadowSpread: 3
		shadowColor: "rgba(25, 25, 25, 0.3)"

fruitMenu = new Layer
		height: menuHeight
		width: menuWidth
		x: 0
		y: cupcakeMenu.y + cupcakeMenu.height
		backgroundColor: yellow
		shadowY: 2
		shadowBlur: 40
		shadowSpread: 3
		shadowColor: "rgba(25, 25, 25, 0.3)"

iceCreamMenu = new Layer
		height: menuHeight
		width: menuWidth
		x: 0
		y: fruitMenu.y + fruitMenu.height
		backgroundColor: red
		shadowY: 2
		shadowBlur: 40
		shadowSpread: 3
		shadowColor: "rgba(25, 25, 25, 0.3)"

repositionMenus = () -> 
		iceCreamMenu.bringToFront()
		fruitMenu.bringToFront()
		cupcakeMenu.bringToFront()
		cookieMenu.bringToFront()

repositionMenus()

cookieIcon = sketch.Cookie
cookieIcon.parent = cookieMenu
cookieIcon.center()

cookieText = sketch.CookieText
cookieText.parent = cookieMenu
cookieText.centerX()
cookieText.y = cookieText.parent.height * 0.8

cupcakeIcon = sketch.Cupcake
cupcakeIcon.parent = cupcakeMenu
cupcakeIcon.center()

cupcakeText = sketch.CupcakeText
cupcakeText.parent = cupcakeMenu
cupcakeText.centerX()
cupcakeText.y = cupcakeText.parent.height * 0.8

fruitIcon = sketch.Raspberry
fruitIcon.parent = fruitMenu
fruitIcon.center()

fruitText = sketch.FruitText
fruitText.parent = fruitMenu
fruitText.centerX()
fruitText.y = fruitText.parent.height * 0.8

iceCreamIcon = sketch.IceCream
iceCreamIcon.parent = iceCreamMenu
iceCreamIcon.center()

iceCreamText = sketch.IceCreamText
iceCreamText.parent = iceCreamMenu
iceCreamText.centerX()
iceCreamText.y = iceCreamText.parent.height * 0.8