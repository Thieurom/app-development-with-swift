
import UIKit

class EmployeeListTableViewController: UITableViewController {

    struct PropertyKeys {
        static let employeeCellIdentifier = "EmployeeCell"
        static let addEmployeeSegueIdentifier = "AddEmployeeSegue"
        static let editEmployeeSegueIdentifier = "EditEmployeeSegue"
    }
    
    var employees: [Employee] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.employeeCellIdentifier, for: indexPath)

        let employee = employees[indexPath.row]
        cell.textLabel?.text = employee.name
        cell.detailTextLabel?.text = employee.employeeType.description()

        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            employees.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let employeeDetailTableViewController = segue.destination as? EmployeeDetailTableViewController else { return }
        
        if let indexPath = tableView.indexPathForSelectedRow,
            segue.identifier == PropertyKeys.editEmployeeSegueIdentifier {
            employeeDetailTableViewController.employee = employees[indexPath.row]
        }
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        guard let employeeDetailTableViewController = segue.source as? EmployeeDetailTableViewController,
            let employee = employeeDetailTableViewController.employee else { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            employees.remove(at: indexPath.row)
            employees.insert(employee, at: indexPath.row)
        } else {
            employees.append(employee)
        }
    }

}
