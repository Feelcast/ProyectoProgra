CREATE TABLE [users](
	[id] INTEGER PRIMARY KEY,
    [fname] TEXT NOT NULL, 
    [lname] TEXT NOT NULL, 
	[username] TEXT NOT NULL,
	[password] TEXT NOT NULL,
	[admin] INTEGER NOT NULL,
	[active] INTEGER NOT NULL,
	UNIQUE([username]));
	
CREATE TABLE [payment] (
	[id] INTEGER PRIMARY KEY,
	[description] TEXT NOT NULL);

CREATE TABLE [product_category] (
	[id] INTEGER PRIMARY KEY,
	[description] TEXT NOT NULL);
	
CREATE TABLE [products] (
	[id] INTEGER PRIMARY KEY,
	[description] TEXT NOT NULL,
	[category_id] INTEGER NOT NULL,
	[price] REAL NOT NULL,
	[qty] INTEGER NOT NULL,
  FOREIGN KEY ([category_id]) REFERENCES product_category([id]),
	UNIQUE([description]));
	
CREATE TABLE [register] (
	[id] INTEGER PRIMARY KEY AUTOINCREMENT,
	[date] TEXT NOT NULL,
	[product] TEXT NOT NULL, 
	[product_price] REAL NOT NULL,
	[product_qty] INTEGER NOT NULL,
	[pay_id] INTEGER NOT NULL REFERENCES payment([id]),
	[user_id] INTEGER NOT NULL,
	[admin_id] INTEGER NOT NULL,
	FOREIGN KEY ([product], [product_price], [product_qty]) REFERENCES products([description], [price], [qty]));
	
