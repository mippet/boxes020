
Product.delete_all
Box.delete_all



product1 = Product.create(title:"Beware!", description:"nice suprise", price:3.95, image:"http://res.cloudinary.com/mippet/image/upload/c_scale,w_400/v1485716356/boxes/Group-1-1024x728.png")
product2 = Product.create(title:"Letter", description:"letters, letters, letters", price: 3.95, image:"http://res.cloudinary.com/mippet/image/upload/c_scale,w_400/v1485716200/boxes/koffer-alfabet-1drukgang-1024x728.png")
product3 = Product.create(title:"Christmas", description:"2 colors of green, gold and red, fits perfectly under any tree", price: 5.45, image:"http://res.cloudinary.com/mippet/image/upload/c_scale,w_400/v1485716035/boxes/Group-7-1024x724.png")
product4 = Product.create(title:"Happy Birthday!", description:"A great box to give and get", price: 10.00, image:"http://res.cloudinary.com/mippet/image/upload/c_scale,w_400/v1485715902/boxes/Layer-1-1000x1000.png")
product5 = Product.create(title:"Tour through the Westerpark", description:"learn about the old gas factory", price: 15.00, image:"http://res.cloudinary.com/mippet/image/upload/c_scale,w_400/v1485715009/boxes/koffer-westergasfabriek-open.png")

box1 = Box.create(title:"One print Run", description:" Boxes with one print run", image:"http://res.cloudinary.com/mippet/image/upload/c_scale,w_400/v1485714807/boxes/koffer-quiz-1drukgang-600x600.png", products: [product2, product1])
box2 = Box.create(title:"Four print Runs", description:"Boxes with four print runs", image:"http://res.cloudinary.com/mippet/image/upload/c_scale,w_400/v1485714693/boxes/Group-9-600x600.png", products: [product3])
box3 = Box.create(title:"Themes", description:"Boxes with a game or tour etc", image:"http://res.cloudinary.com/mippet/image/upload/c_scale,w_400/v1485715702/boxes/Group-18-1.png", products: [product4, product5])
