import ballerina/graphql;
// import ballerina/io;
// import ballerina/uuid;

type schema service object {
    *graphql:Service;
    resource function get getUserById(string id) returns User?;
    resource function get getUsersByRole(string role) returns User?[]?;
    resource function get getKPIById(string id) returns KPIInput?;
    resource function get getEmployeeKPIs(string empId) returns EmployeeKPIInput?[]?;
    resource function get getDepartmentObjectives(string objId) returns DepartmentObjective?[]?;
    resource function get getGrade(string empId) returns GradeOutput?[]?;
    remote function createUser(UserInput user) returns User?;
    remote function updateUser(string id, UserInput user) returns User?;
    remote function deleteUser(string id) returns User?;
    remote function createKPI(KPIInput kpi) returns KPIInput?;
    remote function updateKPI(string id, KPIInput kpi) returns KPIInput?;
    remote function deleteKPI(string id) returns KPIInput?;
    remote function createEmployeeKPI(EmployeeKPIInput employeeKPI) returns EmployeeKPIInput?;
    remote function createDepartmentObjective(DepartmentObjectiveInput departmentObjective) returns DepartmentObjective?;
};

public type DepartmentObjectiveInput record {|
    string objId;
    string kpiId;
    int value;
    string gradedBy;
    int grade;
    string evalDate;
|};

public type DepartmentObjective record {|
    readonly string objId;
    readonly string kpiId;
    readonly int value;
    readonly string gradedBy;
    readonly int grade;
    readonly string evalDate;
|};

public type EmployeeKPIInput record {|
    string empId;
    string kpiId;
    int value;
    string gradedBy;
    int grade;
    string evalDate;
|};

public type EmployeeKPI record {|
    readonly string empId;
    readonly string kpiId;
    readonly int value;
    readonly string gradedBy;
    readonly int grade;
    readonly string evalDate;
|};

public type GradeOutput record {|
    readonly string empId;
    readonly int grade;
|};

public type KPIInput record {|
    string name;
    string objId;
    string objective;
    string unit;
    float weightage;
    string createdBy;
    string createdAt;
|};

public type KPI record {|
    readonly string kpiId;
    readonly string name;
    readonly string objective;
    readonly string unit;
    readonly float weightage;
    readonly string createdBy;
    readonly string createdAt;
|};

public type UserInput record {|
    readonly int userId;
    string username;
    string password;
    string role;
    string department;
    string position;
    string email;
    string? assignedSupervisor;
    string? assignedHoD;
    string?[]? assignedEmployees;
    string?[]? objectives;
    GradeOutput?[]? grades;
    string?[]? KPIs;
|};

public type User record {|
    readonly string userId;
    string username;
    readonly string password;
    string role;
    string department;
    string position;
    string email;
    string? assignedSupervisor;
    string? assignedHoD;
    string?[]? assignedEmployees;
    string?[]? objectives;
    readonly GradeOutput?[]? grades;
    readonly string?[]? KPIs;
|};


table<User> key(userId) usersTable = table [];
table<UserInput> key(userId) userinputTable = table [];
table<KPI> key(kpiId) kpisTable = table [];
table<GradeOutput> key(empId) gradesTable = table [];
table<EmployeeKPI> key(empId) empkpisTable = table [];
table<DepartmentObjective> key(objId) depobjTable = table [];


service / on new graphql:Listener(9090) {

    resource function get empId(string empId) returns string {
        return empId;
    }

    resource function get kpiId(string kpiId) returns string {
        return kpiId;
    }

    resource function get value(int value) returns int {
        return value;
    }

    resource function get gradedBy(string gradedBy) returns string {
        return gradedBy;
    }

    resource function get grade(int grade) returns int {
        return grade;
    }

    resource function get evalDate(string evalDate) returns string {
        return evalDate;
    }
}


service / on new graphql:Listener(9090) {
    resource function get empId(string empId) returns string {
        return empId;
    }

    resource function get kpiId(string kpiId) returns string {
        return kpiId;
    }

    resource function get value(int value) returns int {
        return value;
    }

    resource function get gradedBy(string gradedBy) returns string {
        return gradedBy;
    }

    resource function get grade(int grade) returns int {
        return grade;
    }

    resource function get evalDate(string evalDate) returns string {
        return evalDate;
    }
}

service / on new graphql:Listener(9090) {
    resource function get empId(string empId) returns string {
        return empId;
    }

    resource function get grade(int grade) returns int {
        return grade;
    }
}

service / on new graphql:Listener(9090) {
    resource function get _id(string kpiId) returns string {
        return kpiId;
    }

    resource function get name(string name) returns string {
        return name;
    }

    resource function get objective(string objective) returns string {
        return objective;
    }

    resource function get unit(string unit) returns string {
        return unit;
    }

    resource function get weightage(float weightage) returns float {
        return weightage;
    }

    resource function get createdBy(string createdBy) returns string {
        return createdBy;
    }
}

service / on new graphql:Listener(9090) {
    resource function get _id(string id) returns string {
        return id;
    }

    resource function get username(string username) returns string {
        return username;
    }

    resource function get password(string password) returns string {
        return password;
    }

    resource function get role(string role) returns string {
        return role;
    }

    resource function get department(string department) returns string {
        return department;
    }

    resource function get position(string position) returns string {
        return position;
    }

    resource function get email(string email) returns string {
        return email;
    }

    resource function get assignedSupervisor(string? assignedSupervisor) returns string? {
        return assignedSupervisor;
    }

    resource function get assignedHoD(string? assignedHoD) returns string? {
        return assignedHoD;
    }

    resource function get assignedEmployees(string?[]? assignedEmployees) returns string?[]? {
        return assignedEmployees;
    }

    resource function get objectives(string?[]? objectives) returns string?[]? {
        return objectives;
    }

    resource function get grades(GradeOutput?[]? grades) returns GradeOutput?[]? {
        return grades;
    }

    resource function get KPIs(string?[]? KPIs) returns string?[]? {
        return KPIs;
    }
}
