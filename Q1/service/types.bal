import ballerina/graphql;

type schema service object {
    *graphql:Service;
    resource function get getUserById(string id) returns User?;
    resource function get getUsersByRole(string role) returns User?[]?;
    resource function get getKPIById(string id) returns KPI?;
    resource function get getEmployeeKPIs(string employeeId) returns EmployeeKPI?[]?;
    resource function get getDepartmentObjectives(string employeeId) returns DepartmentObjective?[]?;
    remote function createUser(UserInput user) returns User?;
    remote function updateUser(string id, UserInput user) returns User?;
    remote function deleteUser(string id) returns User?;
    remote function createKPI(KPIInput kpi) returns KPI?;
    remote function updateKPI(string id, KPIInput kpi) returns KPI?;
    remote function deleteKPI(string id) returns KPI?;
    remote function createEmployeeKPI(EmployeeKPIInput employeeKPI) returns EmployeeKPI?;
    remote function createDepartmentObjective(DepartmentObjectiveInput departmentObjective) returns DepartmentObjective?;
};

public type DepartmentObjectiveInput record {|
    string employeeId;
    string kpiId;
    int value;
    string gradedBy;
    int grade;
    string evalDate;
|};

public type EmployeeKPIInput record {|
    string employeeId;
    string kpiId;
    int value;
    string gradedBy;
    int grade;
    string evalDate;
|};

public type GradeInput record {|
    string employeeId;
    int grade;
|};

public type KPIInput record {|
    string name;
    string objective;
    string unit;
    float weightage;
    string createdBy;
    string createdAt;
|};

public type UserInput record {|
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
    GradeInput?[]? grades;
    string?[]? KPIs;
|};

public distinct service class DepartmentObjective {
    resource function get employeeId() returns string {
    }

    resource function get kpiId() returns string {
    }

    resource function get value() returns int {
    }

    resource function get gradedBy() returns string {
    }

    resource function get grade() returns int {
    }

    resource function get evalDate() returns string {
    }
}

public distinct service class EmployeeKPI {
    resource function get employeeId() returns string {
    }

    resource function get kpiId() returns string {
    }

    resource function get value() returns int {
    }

    resource function get gradedBy() returns string {
    }

    resource function get grade() returns int {
    }

    resource function get evalDate() returns string {
    }
}

public distinct service class Grade {
    resource function get employeeId() returns string {
    }

    resource function get grade() returns int {
    }
}

public distinct service class KPI {
    resource function get _id() returns string {
    }

    resource function get name() returns string {
    }

    resource function get objective() returns string {
    }

    resource function get unit() returns string {
    }

    resource function get weightage() returns float {
    }

    resource function get createdBy() returns string {
    }

    resource function get createdAt() returns string {
    }
}

public distinct service class User {
    resource function get _id() returns string {
    }

    resource function get username() returns string {
    }

    resource function get password() returns string {
    }

    resource function get role() returns string {
    }

    resource function get department() returns string {
    }

    resource function get position() returns string {
    }

    resource function get email() returns string {
    }

    resource function get assignedSupervisor() returns string? {
    }

    resource function get assignedHoD() returns string? {
    }

    resource function get assignedEmployees() returns string?[]? {
    }

    resource function get objectives() returns string?[]? {
    }

    resource function get grades() returns Grade?[]? {
    }

    resource function get KPIs() returns string?[]? {
    }
}
