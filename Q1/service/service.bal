import ballerina/graphql;

configurable int port = 9090;

service schema on new graphql:Listener(port) {
    resource function get getUserById(string id) returns User? {
    }

    resource function get getUsersByRole(string role) returns User?[]? {
    }

    resource function get getKPIById(string id) returns KPI? {
    }

    resource function get getEmployeeKPIs(string employeeId) returns EmployeeKPI?[]? {
    }

    resource function get getDepartmentObjectives(string employeeId) returns DepartmentObjective?[]? {
    }

    remote function createUser(UserInput user) returns User? {
    }

    remote function updateUser(string id, UserInput user) returns User? {
    }

    remote function deleteUser(string id) returns User? {
    }

    remote function createKPI(KPIInput kpi) returns KPI? {
    }

    remote function updateKPI(string id, KPIInput kpi) returns KPI? {
    }

    remote function deleteKPI(string id) returns KPI? {
    }

    remote function createEmployeeKPI(EmployeeKPIInput employeeKPI) returns EmployeeKPI? {
    }

    remote function createDepartmentObjective(DepartmentObjectiveInput departmentObjective) returns DepartmentObjective? {
    }
}
