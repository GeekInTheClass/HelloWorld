//
//  BookTableViewController.swift
//  Books
//
//  Created by GO on 2018. 2. 1..
//  Copyright © 2018년 GOYAPP. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {
    
    var books:[Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
//        books.append("즐거운 C++")
//        books.append("재미난 C")
//        books.append("괴로운 Swift")
        
        var book1 = Book(title: "즐거운 C++",
                         writer: "홍길동",
                         coverImage: #imageLiteral(resourceName: "book1"),
                         description: "즐거워요~~~~~")
        var book2 = Book(title: "재미난 C",
                         writer: "김길동",
                         coverImage: #imageLiteral(resourceName: "book2"),
                         description: "즐거워요~~~~~C")
        var book3 = Book(title: "괴로운 Swift",
                         writer: "최길동",
                         coverImage: #imageLiteral(resourceName: "book3"),
                         description: "괴로워요~~~~~")
        
        books.append(book1)
        books.append(book2)
        books.append(book3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        
        var book = books[indexPath.row]
        
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.writer
        cell.imageView?.image = book.coverImage

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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let selectedRow = indexPath.row
            let vc = segue.destination as? BookDetailViewController
            vc?.book = books[selectedRow]
        }
    }
}
