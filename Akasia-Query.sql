-- TABLE Employee
CREATE TABLE Employee (
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	EmployeeId VARCHAR(10) NOT NULL UNIQUE,
	FullName VARCHAR(100) NOT NULL,
	BirthDate DATE NOT NULL,
	Address VARCHAR(500)
);
-- TABLE PositionHistory
CREATE TABLE PositionHistory (
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	PosId VARCHAR(10) NOT NULL,
	PosTitle VARCHAR(100) NOT NULL,
	EmployeeId VARCHAR(10) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL
);

-- INSERT Employee
INSERT INTO Employee (EmployeeId, FullName, BirthDate, Address) VALUES 
('10105001', 'Ali Anton', '1982-08-19', 'Jakarta Utara'),
('10105002', 'Rara Siva', '1982-01-01', 'Mandalika'),
('10105003', 'Rini Aini', '1982-02-20', 'Sumbawa Besar'),
('10105004', 'Budi', '1982-02-22', 'Mataram Kota')
-- INSERT PositionHistory
INSERT INTO PositionHistory (PosId, PosTitle, EmployeeId, StartDate, EndDate) VALUES 
('50000', 'IT Manager', '10105001', '2022-01-01', '2022-02-28'),
('50001', 'IT Sr. Manager', '10105001', '2022-03-01', '2022-12-31'),
('50002', 'Programmer Analyst', '10105002', '2022-01-01', '2022-02-28'),
('50003', 'Sr. Programmer Analyst', '10105002', '2022-03-01', '2022-12-31'),
('50004', 'IT Admin', '10105003', '2022-01-01', '2022-02-28'),
('50005', 'IT Secretary', '10105003', '2022-03-01', '2022-12-31')

-- SELECT All Employee
select ep.EmployeeId, ep.FullName, ep.BirthDate, ep.Address, 
ph.PosId, ph.PosTitle, ph.EmployeeId, ph.StartDate, ph.EndDate
from Employee ep
join PositionHistory ph on ph.EmployeeId = ep.EmployeeId
where ph.EndDate > '2022-02-28'
