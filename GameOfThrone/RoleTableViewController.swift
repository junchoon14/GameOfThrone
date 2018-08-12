//
//  RoleTableViewController.swift
//  GameOfThrone
//
//  Created by Jason Hsu on 2018/8/12.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class RoleTableViewController: UITableViewController {
    
    let roles = [
        Role(name: "艾德·史塔克", image: "Eddard", gender: "M", intro: "艾德·史塔克（Eddard Stark），暱稱「奈德」，是史塔克家族家主，臨冬城公爵、北境的最高統治者、北境守護。與勞勃國王是從小一起長大的好友，並一同推翻了坦格利安王朝。最終艾德成為了勞勃國王的國王之手，後在政治角逐中失敗，殞命君臨。"),
        Role(name: "羅柏·史塔克", image: "Robb", gender: "M", intro: "羅柏·史塔克（Robb Stark）是臨冬城公爵艾德·史塔克和凱特琳的長子，臨冬城的繼承人。當父親因所謂的叛國罪入獄後，他旋即舉兵並聯合河間地領主發兵南下，以營救自己的父親。在艾德被處斬之後，他開始正式對抗鐵王座，並被部下們擁立為北境之王。人稱「少狼主」。他的冰原狼名叫灰風，始終與羅柏形影不離，參與了各種戰鬥。"),
        Role(name: "布蘭·史塔克", image: "Bran", gender: "M", intro: "布蘭·史塔克（Bran Stark），通常被簡稱為布蘭，他是艾德和凱特琳的次子。嚴重的摔傷導致了他終生殘疾，這極大的改變了他的生活。他需要僕人阿多的背負才能完成日常的活動。布蘭有一隻名叫夏天的冰原狼，並且他具有狼靈的能力，可以與狼精神相通。他還是一位綠先知，有時會做預言的夢。"),
        Role(name: "珊莎·史塔克", image: "Sansa", gender: "F", intro: "珊莎·史塔克（Sansa Stark）是凱特琳·徒利和艾德·史塔克的長女。她有三個兄弟羅柏，布蘭和瑞肯，還有一個妹妹，艾莉亞。她曾和七大王國的王儲喬佛里·拜拉席恩訂婚，也曾與提利昂·蘭尼斯特有一段強扭的姻緣。現在，她正化名雅萊恩·石東藏身於艾林谷。"),
        Role(name: "艾莉亞·史塔克", image: "Arya", gender: "F", intro: "艾莉亞·史塔克（Arya Stark）是艾德和凱特琳的第三個孩子，也是他們的次女。她在《權力遊戲》開始時九歲。她有三個兄弟羅柏、布蘭和瑞肯，一個同父異母的哥哥瓊恩·雪諾，以及一個姐姐珊莎。\n和她的兄弟們一樣，她有時會夢見自己是一隻冰原狼。她的冰原狼名叫娜梅莉亞，名字源自洛伊拿的戰士女王娜梅莉亞。"),
        Role(name: "凱特琳·徒利", image: "Catelyn", gender: "F", intro: "凱特琳·徒利（Catelyn Tully）是臨冬城夫人，艾德·史塔克公爵之妻。她的娘家是河間地的徒利家族。將她嫁給北境公爵促成了河間地與北境的聯盟。她有五個孩子，並對每一個都懷有深深的愛，在一系列事件襲擊史塔克家族後，如何拯救她的孩子們成為了她做出各種決斷的主要考量。她沒能逃過紅色婚禮的浩劫，但她似乎將以另一種形式歸來。"),
        Role(name: "瓊恩·雪諾", image: "Jon", gender: "M", intro: "瓊恩·雪諾（Jon Snow）可能是艾德·史塔克的私生子，關於其生母，存在諸多推測。他和父親嫡生的孩子，即瓊恩同父異母的兄弟姐妹，一起長大，卻在接近成年之時加入了守夜人。他的冰原狼白靈通常伴隨其左右。在卷一《權力遊戲》開始時，瓊恩十四歲。"),
        Role(name: "瑞肯·史塔克", image: "Rickon", gender: "M", intro: "瑞肯·史塔克（Rickon Stark） 是艾德公爵和凱特琳夫人最小的孩子，故事開始時他才三歲。瑞肯是一個天生有些好強又固執己見的孩子，但是他的年幼讓他很難適應家庭和命運的變故。他的冰原狼毛毛狗經常陪伴著他。"),
        Role(name: "班揚·史塔克", image: "Benjen", gender: "M", intro: "班揚·史塔克 （Benjen Stark），是守夜人的首席遊騎兵。他是臨冬城公爵艾德·史塔克的幼弟。"),
        Role(name: "阿多", image: "Hodor", gender: "M", intro: "阿多（Hodor）是臨冬城的一個馬僮。他的本名是瓦德。"),
        Role(name: "老奶媽", image: "Nan", gender: "F", intro: "老奶媽（Nan）是臨冬城的一名女傭。")
    ]

    
    @IBOutlet var roleLabels: [UILabel]!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        var i = 0
        for label in roleLabels {
            label.text = roles[i].name
            i += 1
        }
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as? RoleViewController
        
        if let row = tableView.indexPathForSelectedRow?.row {
        controller?.role = roles[row]
        }
     }
    


    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
*/
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    
}
