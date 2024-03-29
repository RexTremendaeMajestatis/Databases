db.createCollection("products");
db.createCollection("orders");

db.products.insertMany([
    { name: "Nuke Dunk SB", price: 100 },
    { name: "Cote&Ciel backpack", price: 400 },
    { name: "Balenciaga bag", price: 3000 },
    { name: "FTP keyring", price: 100 },
]);

db.products.find()

db.orders.insertMany([
    { customer: "Pavel Kizhnerov", created_at: 1670600517, items: [
        {id: ObjectId("63948af28153881bfbd02f68"), count: 2},
        {id: ObjectId("63948af28153881bfbd02f65"), count: 1},
    ] },
    { customer: "Vladlena Ermak", created_at: 1639064517, items: [
            {id: ObjectId("63948af28153881bfbd02f67"), count: 1},
            {id: ObjectId("63948af28153881bfbd02f66"), count: 1},
    ] }
]);

db.orders.find();
db.orders.find({created_at: {"$gt": 1643673600}});
