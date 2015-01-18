// Playground - noun: a place where people can play

import UIKit

let gradeList = [
    "Sophia": "B-",
    "Emma": "A+",
    "Mason": "B",
    "Olivia": "C+",
    "Aiden": "D",
    "Lucas": "C",
    "Liam": "D+",
    "Isabella": "B+",
    "Mia": "A",
    "Jackson": "C+",
    "Ava": "B",
    "Jacob": "B+",
    "Noah": "C",
    "Lily": "B",
    "Zoe": "B-",
    "Ethan": "C+",
    "Emily": "A-",
    "Jayden": "B",
    "Chloe": "A-",
    "Jack": "C-"
]

enum GPA: Double {
    case APlus = 4.25
    case A = 4.0
    case AMinus = 3.75
    case BPlus = 3.25
    case B = 3.0
    case BMinus = 2.75
    case CPlus = 2.25
    case C = 2.0
    case CMinus = 1.75
    case DPlus = 1.25
    case D = 1.0
    
    init(stringValue: String) {
        switch stringValue {
        case "A+":
            self = APlus
            break
        case "A":
            self = A
            break
        case "A-":
            self = AMinus
            break
        case "B+":
            self = BPlus
            break
        case "B":
            self = B
            break
        case "B-":
            self = BMinus
            break
        case "C+":
            self = CPlus
            break
        case "C":
            self = C
            break
        case "C-":
            self = CMinus
            break
        case "D+":
            self = DPlus
            break
        default:
            self = D
            break
        }
    }
}

func checkAnswer(guess: [String: GPA]) -> Bool {
    let correctKeys = ["Chloe", "Emma", "Jacob", "Isabella", "Mia", "Emily"]
    if guess.keys.array == correctKeys {
        return true
    } else {
        return false
    }
}

//convert letter grades to GPA, filter by who was better than B average, sort alphabetically
var goodStudents: [String: GPA] = [:]

let sortedKeys = Array(gradeList.keys).sorted(<)

for studentName in sortedKeys {
    let gpa = GPA(stringValue:gradeList[studentName]!)
    if (gpa.rawValue > 3.0) {
        goodStudents[studentName] = gpa
    }
}

print(goodStudents)

checkAnswer(goodStudents)







