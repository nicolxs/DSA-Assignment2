import ballerinax/mongodb;
import ballerina/io;
import ballerina/http;


mongodb:ConnectionConfig mongoConfig = {
connection: {
url: "mongodb://localhost:27017/performance_db"
// port: 27017,
// // auth: {
// // username: "peasnextdoor",
// // password: "Younglad23"
// },
// options: {
// sslEnabled: false,
// serverSelectionTimeout: 5000
// }
},
databaseName: "performance_db"
};
mongodb:Client mongoClient = check new (mongoConfig);

//Hod user doc
type HoDRecord record {
    string username;
    string passwrod;
    string role;
    string department;
    string position;
    string email;
    string assignedSupervisor;
};

//Supervisor Record
type SupervisorRecord record{
    string username;
    string password;
    string role;
    string department;
    string position;
    string email;
    string assignedSupervisor; //HoD's
};


type EmployeeRecord record {
    string username;
    string password;
    string role;
    string department;
    string position;
    string email;
    string assignedSupervisor; // Supervisor's username or ID
};

//temporary user store(neeeds to be replacd with db queries)
map<UserRecord> users ={};

public function authenticateUser(string username, string password) returns boolean|error? {

    UserRecord? user = users[username];
    if (user == null || user.password != password) {
        return false;
    }
    return true;

}







public function main() returns error? {
    string collection = "Users";
    map<json> doc = {
        "username": "BallerinaTestEmployee2s",
        "password": "leagueofLegends",
        "role": "Employee",
        "department": "Comp Sci",
        "position": "lecturer",
        "email": "ballclient@nixonspc.com",
        "assignedSupervisor": ""
    };

    var result = mongoClient->insert(doc, collection);

    if (result is error) {
        io:println("Failed to insert doc: " + result.toString());
    } else {
        io:println("Successfully inserted doc!");
    }

    mongoClient->close();
}


