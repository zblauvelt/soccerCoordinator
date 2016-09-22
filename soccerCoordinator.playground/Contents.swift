//: List of all players


let players = [
    [
        "name": "Joe Smith",
        "height": "42",
        "experience": "YES",
        "guardian": "Jim and Jan Smith"
    ],
    [
        "name": "Jill Tanner",
        "height": "36",
        "experience": "YES",
        "guardian": "Clara Tanner"
    ],
    [
        "name": "Bill Bon",
        "height": "43",
        "experience": "YES",
        "guardian": "Sara and Jenny Bon"
    ],
    [
        "name": "Eva Gordon",
        "height": "45",
        "experience": "NO",
        "guardian": "Wendy and Mike Gordon"
    ],
    [
        "name": "Matt Gill",
        "height": "40",
        "experience": "NO",
        "guardian": "Charles and Sylvia Gill"
    ],
    [
        "name": "Kimmy Stein",
        "height": "41",
        "experience": "NO",
        "guardian": "Bill and Hillary Stein"
    ],
    [
        "name": "Sammy Adams",
        "height": "45",
        "experience": "NO",
        "guardian": "Jeff Adams"
    ],
    [
        "name": "Karl Saygan",
        "height": "42",
        "experience": "YES",
        "guardian": "Heather Bledsoe"
    ],
    [
        "name": "Suzane Greenberg",
        "height": "44",
        "experience": "YES",
        "guardian": "Henrietta Dumas"
    ],
    [
        "name": "Sal Dali",
        "height": "41",
        "experience": "NO",
        "guardian": "Gala Dali"
    ],
    [
        "name": "Joe Kavalier",
        "height": "39",
        "experience": "NO",
        "guardian": "Sam and Elaine Kavalier"
    ],
    [
        "name": "Ben Finkelstein",
        "height": "44",
        "experience": "NO",
        "guardian": "Aaron and Jill Finkelstein"
    ],
    [
        "name": "Diego Soto",
        "height": "41",
        "experience": "YES",
        "guardian": "Robin and Sarika Soto"
    ],
    [
        "name": "Chloe Alaska",
        "height": "47",
        "experience": "NO",
        "guardian": "David and Jamie Alaska"
    ],
    [
        "name": "Arnold Willis",
        "height": "43",
        "experience": "NO",
        "guardian": "Claire Willis"
    ],
    [
        "name": "Phillip Helm",
        "height": "44",
        "experience": "YES",
        "guardian": "Thomas Helm and Eva Jones"
    ],
    [
        "name": "Les Clay",
        "height": "42",
        "experience": "YES",
        "guardian": "WyNonna Brown"
    ],
    [
        "name": "Herschel Krustofski",
        "height": "45",
        "experience": "YES",
        "guardian": "Hyman and Rachel Krustofski"
    ]
]


var playersWithExperience: [[String: String]] = []
var playersWithoutExperience: [[String: String]] = []

var sharks: [[String: String]] = []
var dragons: [[String: String]] = []
var raptors: [[String: String]] = []


for player in players {
    if (player["experience"] == "YES") {
        playersWithExperience.append(player)
    } else {
        playersWithoutExperience.append(player)
    }
}

//Assign teams by experience level

var arrayNumber = 0
var experiencedCount = playersWithExperience.count

while experiencedCount > 1 {
    
    sharks.append(playersWithExperience[arrayNumber])
    arrayNumber += 1
    experiencedCount -= 1
    
    dragons.append(playersWithExperience[arrayNumber])
    arrayNumber += 1
    experiencedCount -= 1
    
    raptors.append(playersWithExperience[arrayNumber])
    arrayNumber += 1
    experiencedCount -= 1
}


var inexperiencedArrayNumber = 0
var inexperiencedCount = playersWithoutExperience.count

while inexperiencedCount > 1 {
    
    raptors.append(playersWithoutExperience[inexperiencedArrayNumber])
    inexperiencedArrayNumber += 1
    inexperiencedCount -= 1
    
    dragons.append(playersWithoutExperience[inexperiencedArrayNumber])
    inexperiencedArrayNumber += 1
    inexperiencedCount -= 1
    
    sharks.append(playersWithoutExperience[inexperiencedArrayNumber])
    inexperiencedArrayNumber += 1
    inexperiencedCount -= 1
}



//Print message to guardians
let sharksFirstPractice = "March 17th, 3pm"
let sharksName = "Sharks"
let dragonsFirstPractice = "March 17th, 1pm"
let dragonsName = "Dragons"
let raptorsFirstPractice = "March 18th, 1pm"
let raptorsName = "Raptors"

func printMessages(team: [[String: String]], teamName: String, firstPractice: String) {
    for player in team {
        let guardians = player["guardian"]!
        let playerName = player["name"]!
        
        print("Dear \(guardians),\n\nThe \(teamName) would like to welcome your child \(playerName) to the team. Our first practice will be on \(firstPractice). \n\nGood luck! \n\nZack Blauvelt\n\nSoccer Coordinator\n\n")
    }
}

printMessages(sharks, teamName: sharksName, firstPractice: sharksFirstPractice)
printMessages(dragons, teamName: dragonsName, firstPractice: dragonsFirstPractice)
printMessages(raptors, teamName: raptorsName, firstPractice: raptorsFirstPractice)















