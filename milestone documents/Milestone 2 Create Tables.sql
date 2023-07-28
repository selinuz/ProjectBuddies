CREATE TABLE Post(
	PostID: char(11),
	Title: char(50),
	Description: char(400),
	Time: date,
	UserID: char(11) NOT NULL,
	ProjectID: char(11) NOT NULL UNIQUE,
	PRIMARY KEY (PostID),
	FOREIGN KEY (UserID) REFERENCES User,
	FOREIGN KEY (ProjectID) REFERENCES Project,
)
CREATE TABLE Project(
	ProjectID: char(11),
	Name: char(50),
	Description: char(400),
	Status: char(11),
	PRIMARY KEY (ProjectID)
)
CREATE TABLE Team(
	Name: char(50),
	MaxCapacity: int,
	ProjectID: char(11),
	PRIMARY KEY (Name, ProjectID),
	FOREIGN KEY (ProjectID) REFERENCES Project
		ON DELETE CASCADE
)
CREATE TABLE User(
	UserID: char(11),
	Name: char(50),
	Email: char(50) UNIQUE,
	Password: char(50),
	Bio: char(400),
	PRIMARY KEY (UserID)
)
CREATE TABLE Role(
	RoleName: char(25),
	PRIMARY KEY (RoleName)
)
CREATE TABLE Bug(
	BugID: char(11),
	Title: char(50),
	Status: char(11),
	Description: char(400),
	Severity: char(11),
	StepsToReproduce: char(400),
	UserID: char(11),
	RoleName: char(25),
	ProjectID: char(11) NOT NULL,
	PRIMARY KEY (BugID),
	FOREIGN KEY (UserID) REFERENCES User,
	FOREIGN KEY (RoleName) REFERENCES Role,
	FOREIGN KEY (ProjectID) REFERENCES Project,
)
CREATE TABLE Testing(
	TestingID: char(11),
	Title: char(11),
	Description: char(400),
	Environment: char(11),
	Coverage: int,
	UserID: char(11),
	RoleName: char(25),
	ProjectID: char(11) NOT NULL,
	PRIMARY KEY (TestingID),
	FOREIGN KEY (UserID) REFERENCES User,
	FOREIGN KEY (RoleName) REFERENCES Role,
	FOREIGN KEY (ProjectID) REFERENCES Project,
)
CREATE TABLE TestingCoverageStatusMap(
	Coverage: int,
	Status: char(11),
	PRIMARY KEY (Coverage)
)
CREATE TABLE Feature(
	FeatureID: char(11),
	Title: char(50),
	Status: char(11),
	Description: char(400),
	AcceptanceCriteria: char(400),
	UserID: char(11),
	RoleName: char(25),
	ProjectID: char(11) NOT NULL,
	PRIMARY KEY (FeatureID),
	FOREIGN KEY (UserID) REFERENCES User,
	FOREIGN KEY (RoleName) REFERENCES Role,
	FOREIGN KEY (ProjectID) REFERENCES Project,
)
CREATE TABLE Security(
	SecurityID: char(11),
	Title: char(50),
	Status: char(11),
	Description: char(400),
	CVSS: decimal,
	UserID: char(11),
	RoleName: char(25),
	ProjectID: char(11) NOT NULL,
	PRIMARY KEY (SecurityID),
	FOREIGN KEY (UserID) REFERENCES User,
	FOREIGN KEY (RoleName) REFERENCES Role,
	FOREIGN KEY (ProjectID) REFERENCES Project,
)
CREATE TABLE SecurityCVSSSeverityMap(
	CVSS: decimal,
	Severity: char(11),
	PRIMARY KEY (CVSS)
)
CREATE TABLE RequestToJoin(
	RequestID: char(11),
	Status: char(11),
	Time: date,
	ProjectID: char(11) NOT NULL,
	NotificationID: char(11) NOT NULL UNIQUE,
	RequestingUserID: char(11) NOT NULL,
	PRIMARY KEY (RequestID),
	FOREIGN KEY (ProjectID) REFERENCES Project,
	FOREIGN KEY (NotificationID) REFERENCES Notification,
	FOREIGN KEY (RequestingUserID) REFERENCES User,
)
CREATE TABLE Notification(
	NotificationID: char(11),
	Type: char(11),
	Time: date,
	ReviewingUserID: char(11) NOT NULL,
	PRIMARY KEY (NotificationID),
	FOREIGN KEY (ReviewingUserID) REFERENCES User
)
CREATE TABLE NotificationTypeDescMap(
	Type: char(11),
	Description: char(400),
	PRIMARY KEY (Type)
)
CREATE TABLE UserHasRole(
	UserID: char(11),
	RoleName: char(25),
	PRIMARY KEY (UserID, RoleName),
	FOREIGN KEY (UserID) REFERENCES User,
	FOREIGN KEY (RoleName) REFERENCES Role
)
CREATE TABLE PostNeedsRole(
	PostID: char(11),
	RoleName: char(25),
	PRIMARY KEY (PostID, RoleName),
	FOREIGN KEY (PostID) REFERENCES Post,
	FOREIGN KEY (RoleName) REFERENCES Role
)
CREATE TABLE TeamHasPeople(
	ProjectID: char(11),
	TeamName: char(50),
	RoleName: char(25),
	UserID: char(11),
	PRIMARY KEY (ProjectID, TeamName, RoleName, UserID),
	FOREIGN KEY (ProjectID) REFERENCES Project,
	FOREIGN KEY (TeamName) REFERENCES Team,
	FOREIGN KEY (RoleName) REFERENCES Role,
	FOREIGN KEY (UserID) REFERENCES User,
)
