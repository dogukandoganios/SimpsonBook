//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Doğukan Doğan on 17.06.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView()
    var simpsonArray = [simpsonClass]()
    var simpson : simpsonClass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.frame = CGRect(x: width * 0.5 - width / 2, y: height * 0.5 - height / 2, width: width, height: height)
        view.addSubview(tableView)
        
        let homer = simpsonClass(simpsonNameInıt: "Homer Simpson", simpsonJobInıt: "Nuclear Safety", simpsonImageInıt: UIImage(named: "homer")!)
        
        let marge = simpsonClass(simpsonNameInıt: "Marge Simpson", simpsonJobInıt: "Housewifre", simpsonImageInıt: UIImage(named: "marge")!)
        
        let bart = simpsonClass(simpsonNameInıt: "Bart Simpson", simpsonJobInıt: "Student", simpsonImageInıt: UIImage(named: "bart")!)
        
        simpsonArray = [homer, marge, bart]
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].simpsonName
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        simpson = simpsonArray[indexPath.row]
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! secondViewController
        
        destinationVC.simpson = simpson
    }
    
}

