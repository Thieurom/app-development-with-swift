
import UIKit

class FurnitureTableViewController: UITableViewController {

    struct PropertyKeys {
        static let furnitureCell = "FurnitureCell"
        static let furnitureSegue = "ToFurnitureDetail"
    }
    
    var rooms: [Room] = [
        Room(name: "Living Room",
             furniture: [Furniture(name: "Couch", description: "A comfy place to sit down."),
                         Furniture(name: "Television", description: "Entertainment for all to watch."),
                         Furniture(name: "Coffee Table", description: "A great place to set down your drink.")]),
        Room(name: "Kitchen",
             furniture: [Furniture(name: "Stove", description: "Warm and cook your food here."),
                         Furniture(name: "Oven", description: "Bake a delicious treat for your friends."),
                         Furniture(name: "Sink", description: "Don't forget to clean the dishes!")]),
        Room(name: "Bedroom",
             furniture: [Furniture(name: "Bed", description: "A place to sleep during the night."),
                         Furniture(name: "Desk", description: "Study to keep your mind sharp."),
                         Furniture(name: "Closet", description: "Hang up your clothes to keep them unwrinkled.")])]
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return rooms.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rooms[section].furniture.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.furnitureCell, for: indexPath)
        
        let room = rooms[indexPath.section]
        let furniture = room.furniture[indexPath.row]
        
        cell.textLabel?.text = furniture.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return rooms[0].name
        case 1:
            return rooms[1].name
        case 2:
            return rooms[2].name
        default:
            return "Oops!"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedIndexPath = tableView.indexPathForSelectedRow else { return }
        
        if segue.identifier == PropertyKeys.furnitureSegue {
            let selectedRoom = rooms[selectedIndexPath.section]
            let selectedFurniture = selectedRoom.furniture[selectedIndexPath.row]
            let furnitureDetailViewController = segue.destination as? FurnitureDetailViewController
            
            furnitureDetailViewController?.furniture = selectedFurniture
        }
    }
}
