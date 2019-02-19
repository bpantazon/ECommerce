CREATE TABLE dbo.tag
(
	id int IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
);
CREATE TABLE dbo.product
(
	id int IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	cost int,
	description VARCHAR(255) NOT NULL,
	subcategory_id int
	CONSTRAINT fk_subcategory,	
		foreign key (subcategory_id) references dbo.subcategory(id),
	
);

CREATE TABLE  product_tag
(
	id int IDENTITY(1,1) PRIMARY KEY,
	tag_id int,
	product_id int,
	CONSTRAINT fk_tag
		foreign key(tag_id) references dbo.tag(id),
	Constraint fk_product
		foreign key(product_id) references dbo.product(id),
);

create table category
(
	id int identity(1,1) primary key,
	name VARCHAR(255) NOT NULL, 
);

create table subcategory
(
	id int IDENTITY(1,1) primary key,
	name VARCHAR(255) NOT NULL,
	category_id int,
	contraint fk_category
		foreign key(category_id) references dbo.category(id)
);


