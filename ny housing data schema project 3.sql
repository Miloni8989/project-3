CREATE TABLE pproperty_listings (
    BROKERTITLE VARCHAR(255),
    "type" VARCHAR(100),
    price NUMERIC,
    beds INTEGER,
    bath NUMERIC,
    PROPERTYSQFT NUMERIC,
    address VARCHAR(255),
    "state" VARCHAR(50)
);


INSERT INTO brokertitle (broker_title)
SELECT DISTINCT BROKERTITLE FROM pproperty_listings
ON CONFLICT (broker_title) DO NOTHING;



INSERT INTO  address (address)
SELECT DISTINCT  address FROM pproperty_listings
ON CONFLICT (address) DO NOTHING;


SELECT * FROM brokertitle;
SELECT * FROM address;
SELECT * FROM pproperty_listings;
