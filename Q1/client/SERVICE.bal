import ballerina/graphql;

configurable int port = 9090;

service schema on new graphql:Listener(port) {
    resource function get getUserById(string id) returns User? {
        return;
    }

    resource function get getUsersByRole(string role) returns User?[]? {
        return;
    }

    resource function get getKPIById(string id) returns KPI? {
        return;
    }

    resource function get getEmployeeKPIs(string employeeId) returns EmployeeKPI?[]? {
        return;
    }

    resource function get getDepartmentObjectives(string employeeId) returns DepartmentObjective?[]? {
        return;
    }

    remote function createUser(UserInput user) returns User? {
        return;
    }

    remote function updateUser(string id, UserInput user) returns User? {
        return;
    }

    remote function deleteUser(string id) returns User? {
        return;
    }

    remote function createKPI(KPIInput kpi) returns KPI? {
        return;
    }

    remote function updateKPI(string id, KPIInput kpi) returns KPI? {
        return;
    }

    remote function deleteKPI(string id) returns KPI? {
        return;
    }

    remote function createEmployeeKPI(EmployeeKPIInput employeeKPI) returns EmployeeKPI? {
        return;
    }

    remote function createDepartmentObjective(DepartmentObjectiveInput departmentObjective) returns DepartmentObjective? {
        return;
    }
}
