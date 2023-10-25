import ballerina/graphql;


configurable int port = 9090;

service / on new graphql:Listener(port) {
    resource function get getUserById(User? id) returns User? {
        return id;
    }

    resource function get getUsersByRole(User?[]? role) returns User?[]? {
        return role;
    }

    resource function get getKPIById(KPIInput? id) returns KPIInput? {
        return id;
    }

    resource function get getEmployeeKPIs(EmployeeKPIInput?[]? empId) returns EmployeeKPIInput?[]? {
        return empId;
    }

    resource function get getDepartmentObjectives(DepartmentObjective?[]? empId) returns DepartmentObjective?[]? {
        return empId;
    }


    resource function post createUser(User newUser) returns User|error {
        error? createUser = usersTable.add(newUser);
        if createUser is error {
            return error("Failed to create a new user!");
        }
        return newUser;
    }

    // resource function put updateUser(User updateUsername) returns User|error {
    //     error? updateUser = usersTable.put(updateUsername);
    //     if updateUsername is error {
    //         return error("Failed to update the user profile!");
    //     }
    //     return updateUsername;
    // }


    resource function put updateUser(User updateId ) returns User|error {
        error? updateUser = usersTable.put(updateId);
        if updateUser is error {
            return error("Failed to update the user profile!");
        }
        return updateId;
    }
    

    resource function delete deleteUser/[string userId]() returns User|error {
        User|error deleteUser = usersTable.remove(userId);
        if deleteUser is error {
            return error("Failed to delete the user profile!");
        }
        return deleteUser;
    }

    resource function post createKPI(KPI newKPI) returns KPI|error {
        error? createKPI = kpisTable.add(newKPI);
        if createKPI is error {
            return error("Failed to create new KPI!");
        }
        return newKPI;
    }

    // resource function put updateKPI(KPI id, KPI kpi) returns KPI|error {
    //     error? updateKPI = kpisTable.put(updateKPI);
    //     if updateKPI is error {
    //         return error("Failed to update the selected KPI!");
    //     }
    //     return updateKPI;
    // }

    resource function delete deleteKPI/[string id]() returns KPI|error {
        KPI|error deleteKPI = kpisTable.remove(id);
        if deleteKPI is error {
            return error("Failed to delete the selected KPI!");
        }
        return deleteKPI;
    }

    remote function createEmployeeKPI(EmployeeKPIInput employeeKPI) returns EmployeeKPIInput? {
    }

    remote function createDepartmentObjective(DepartmentObjectiveInput departmentObjective) returns DepartmentObjective? {
    }
}
