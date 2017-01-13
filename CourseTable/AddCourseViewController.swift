//
//  AddCourseViewController.swift
//  CourseTable
//
//  Created by nju on 2017/1/11.
//  Copyright © 2017年 nju. All rights reserved.
//

import UIKit

class AddCourseViewController: ViewController {
    
    @IBOutlet weak var coursename: UITextField!
    @IBOutlet weak var day: UITextField!
    @IBOutlet weak var starttime: UITextField!
    @IBOutlet weak var finishtime: UITextField!
    @IBOutlet weak var courselocation: UITextField!
    @IBOutlet weak var confirm: UIButton!
    
    var dataModel = DataModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func do_add(_ sender: UIButton) {
        
        if  coursename != nil &&  day != nil &&  starttime != nil &&  finishtime != nil &&  courselocation != nil{
            
        dataModel.courseList.append(Courses(coursename: coursename.text!,day: day.text!,starttime: starttime.text!,finishtime: finishtime.text!,courselocation: courselocation.text!))
        
            dataModel.saveData()
            
            _ = self.navigationController?.popViewController(animated: true)
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
