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


type UserRecord record {
    string username;
    string passwrod;
    string role;
};


type DocumentRecord record{
    string id;
    string title;
    string content;
};








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


