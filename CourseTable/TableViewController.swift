//
//  TableViewController.swift
//  CourseTable
//
//  Created by nju on 2017/1/11.
//  Copyright © 2017年 nju. All rights reserved.
//

import UIKit

class TableViewController: ViewController {

    var dataModel = DataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.do_print()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func refresh(_ sender: Any) {
        self.do_print()
    }

    
    func do_print(){
        
        dataModel.loadData()
        
        for Course in dataModel.courseList{
            let label = UILabel(frame:CGRect(x:(Int(Course.day)!-1)*75+40, y:(Int(Course.starttime)!-1)*55+120, width:70, height:(Int(Course.finishtime)!-Int(Course.starttime)!+1)*55))
            label.text = Course.coursename + " " + Course.courselocation
            label.backgroundColor = UIColor.cyan
            label.font = UIFont(name:"Copperplate", size:15)
            label.lineBreakMode = NSLineBreakMode.byTruncatingTail
            self.view.addSubview(label);
            print("\n"+Course.coursename)
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
