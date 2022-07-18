//
//  secondViewController.swift
//  SimpsonBook
//
//  Created by Doğukan Doğan on 17.06.2022.
//

import UIKit

class secondViewController: UIViewController {
    
    var simpsonImage = UIImageView()
    var simpsonName = UILabel()
    var simpsonJob = UILabel()
    
    var simpson : simpsonClass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        simpsonImage.image = simpson?.simpsonImage
        simpsonImage.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(simpsonImage)
        
        simpsonName.text = simpson?.simpsonName
        simpsonName.frame = CGRect(x: 100, y: 200, width: 100, height: 50)
        view.addSubview(simpsonName)
        
        simpsonJob.text = simpson?.simpsonJob
        simpsonJob.frame = CGRect(x: 100, y: 300, width: 100, height: 50)
        view.addSubview(simpsonJob)
        
    }

}
