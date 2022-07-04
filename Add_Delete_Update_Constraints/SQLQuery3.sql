
Alter Table clothe
	Add Constraint Msize check( size between 81 and 116) ;

Alter Table clothe 
	Add Constraint Ttype check (c_type in ('shirt', 'sweater', 'shoes', 'pants','jacket'));

Alter Table clothe
	Add Constraint mmaterial check (material   in ('Cotton', 'Cellulosic_fibres','Lee', 'viscose', 'Wool','Silk','Leather','Bast fibres'));


Alter Table clothe
	Drop Constraint mmaterial ;

Alter Table clothe
	Drop Constraint Ttype ;

Alter Table clothe
	alter column brand varchar(30) not null;

Alter Table C_order
	alter column o_count int not null;
