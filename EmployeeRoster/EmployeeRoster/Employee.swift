
import Foundation

enum EmployeeType {
    case exempt
    case nonExempt
    case partTime
    
    static let all: [EmployeeType] = [.exempt, .nonExempt, .partTime]
    
    func description() -> String {
        switch self {
        case .exempt:
            return "Exempt Full Time"
        case .nonExempt:
            return "Non-exempt Full Time"
        case .partTime:
            return "Part Time"
        }
    }
}

struct Employee {
    
    var name: String
    var dateOfBirth: Date
    var employeeType: EmployeeType
    
}
