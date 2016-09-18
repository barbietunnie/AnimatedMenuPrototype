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

menuItems = []
colors = [blue, green, yellow, red]
icons = [sketch.Cookie, sketch.Cupcake, sketch.Raspberry, sketch.IceCream]
titles = [sketch.CookieText, sketch.CupcakeText, sketch.FruitText, sketch.IceCreamText]

# Add the specified icon to the container
addIcon = (index, iconParent) ->
	icon = icons[index]
	icon.parent = iconParent
	icon.center()
	icon.name = "icon"

# Add a title to the container
addTitle = (index, titleParent) ->
	title = titles[index]
	title.parent = titleParent
	title.centerX()
	title.y = titleParent.height * 0.8

for menuColor, i in colors
	menuItem = new Layer
			height: menuHeight
			width: menuWidth
			x: 0
			y: container.height /4 * i
			shadowY: 2
			shadowBlur: 40
			shadowSpread: 3
			shadowColor: "rgba(25, 25, 25, 0.3)"
			parent: container
			backgroundColor: menuColor
			scale: 1.00
	menuItems.push(menuItem)
	addIcon(i, menuItem)
	addTitle(i, menuItem)

repositionMenus = () -> 
		menuItems[3].bringToFront()
		menuItems[2].bringToFront()
		menuItems[1].bringToFront()
		menuItems[0].bringToFront()

repositionMenus()