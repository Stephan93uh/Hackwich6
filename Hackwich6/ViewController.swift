//
//  ViewController.swift
//  Hackwich6
//
//  Created by Stephan on 10/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var myFriendsArray = ["Sara", "Nicole", "Grant"]
    
    //Hackwich6 Problem set
    var travelList = ["Japan", "Denmark", "Iceland", "Finland", "United Kingdom"]
    
    //Hackwioch7 Problem set
    var friendsHomeArray = ["Honolulu", "Waipahu", "Aiea"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
        //return travelList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        
        let text = myFriendsArray[indexPath.row]
        //let text = travelList[indexPath.row]
        
        cell.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        
        cell.textLabel?.text = text
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

