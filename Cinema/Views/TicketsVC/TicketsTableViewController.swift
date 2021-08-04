//
//  TicketsTableViewController.swift
//  Cinema1
//
//  Created by Клим on 02.08.2021.
//

import UIKit
import RealmSwift

class TicketsTableViewController: UITableViewController {

    var tickets: Results<Ticket>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tickets = StorageManager.shared.realm.objects(Ticket.self)
        self.navigationController?.navigationBar.topItem?.title = "Билеты"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
        self.navigationController?.navigationBar.topItem?.title = "Билеты"
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
        return tickets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ticket", for: indexPath) as! OneTicketTableViewCell
        
        let ticket = tickets[indexPath.row]
        cell.viewModel = OneTicketViewModel(name: ticket.name, time: ticket.time, price: ticket.price)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let ticket = tickets[indexPath.row]
        if editingStyle == .delete {
            StorageManager.shared.delete(ticket: ticket)
            let deleteIndexPath = IndexPath(row: indexPath.row, section: 0)
            tableView.deleteRows(at: [deleteIndexPath], with: .automatic)
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
