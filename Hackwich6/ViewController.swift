//
//  ViewController.swift
//  Hackwich6
//
//  Created by Stephan on 10/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //var myFriendsArray = ["Sara", "Nicole", "Grant"]
    
    //Hackwich6 Problem set
    var travelList = ["Japan", "Denmark", "Iceland", "Finland", "United Kingdom"]
    
    //Hackwioch7 Problem set
    //var friendsHomeArray = ["Honolulu", "Waipahu", "Aiea"]
    
    //Hackwich10 Problem Set
    var myFriendsArray = ["Kapolei Kalapawai"]
    var friendsHomeArray = ["711 Kamokila Blvd, Kapolei, HI 96707"]
    
    //Hackwich10
    @IBOutlet weak var tableView: UITableView!
    
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
    
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
    }
    
    
    //Commented this part out as one of the fallowing two error occur when building: "editor placeholder in source faile" or "command EmitSwiftModule failed with a nonzero exit code". It worked without it.
    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: <#T##IndexPath#> as IndexPath, animated: true)
    }*/
    
    
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


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        }
    }
    
}

