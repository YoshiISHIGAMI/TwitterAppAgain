//
//  TimeLineTableViewController.swift
//  TwitterAppAgain
//
//  Created by Yoshi Ishigami on 2015/09/19.
//  Copyright (c) 2015年 Yoshi Ishigami. All rights reserved.
//

import UIKit

class TimeLineTableViewController: UITableViewController {
    
    let dataArray:[[String:String]] = [["title":"つぶやき"], ["title":"Hello World"]]
    
    //テーブルの件数を登録
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    //テーブルの内容を代入
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = dataArray[indexPath.row]["title"]
        
        return cell
        
    }

}
