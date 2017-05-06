
CREATE TABLE users (
    id character varying(40) NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50),
    password character varying(100),
    verified character varying(5),
    phone character varying(15),
    country character varying(20),
    city character varying(20),
    address character varying(40)
);


