//
//  ListOfSchoolsTableViewController.swift
//  MyCourseWizard
//
//  Created by Yaowen Wang on 4/5/17.
//  Copyright © 2017 Yaowen Wang. All rights reserved.
//

import UIKit

class ListOfSchoolsTableViewController: UITableViewController {

    @IBOutlet var listOfSchoolsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var schools = ["Brown School", "School of Engineering and Applied Science"]
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schools.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellOfListOfSchools", for: indexPath)
        cell.textLabel?.text = schools[indexPath.row]
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        
        if (segue.identifier == "segueToDepartments") {
            let selecedSchool = schools[(listOfSchoolsTableView.indexPathForSelectedRow?.row
                )!]
            let listOfDepartments = segue.destination as! ListOfDepartmentsTableViewController
            listOfDepartments.selectedSchools = selecedSchool
            
            
        }
        
        
    }
    
    
}
