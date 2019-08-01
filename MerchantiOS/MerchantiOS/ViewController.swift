//
//  ViewController.swift
//  MerchantiOS
//
//  Created by Sue Chung on 7/31/19.
//  Copyright © 2019 Sue Chung. All rights reserved.
//

import UIKit
import ButtonMerchant
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        button.layer.shadowRadius = 2
        button.layer.shadowOpacity = 0.2
        
        // Obtain Attribution Token
        if let token = ButtonMerchant.attributionToken {
            // referred token is present
        }
        
        let order = Order(id: "order12345", amount: 4999, currencyCode: "USD") // amount is in cents (i.e. $50 is 5000)
        
        ButtonMerchant.trackOrder(order)
        
        // Set parameters for POST, including Attribution Token
        let parameters: Parameters = [
            //"token": token, // Attribution Token from previous section
            "token": "srctok-111", // temporary
            "price": 49.99,
            "location": "New York"
        ]
        
        // Perform POST request to your Checkout API (server)
        Alamofire.request("http://127.0.0.1:5000/user/Sue", method: .post, parameters: parameters, encoding: JSONEncoding(options: []))
        
        let parameters2: Parameters = [
            "token": "srctok-111", // temporary
            "price": 49.99,
            "location": "New York",
            "total": 5000,
            "currency": "USD",
            "order_id": "1989",
            "purchase_date": "2017-07-01T00:00:00Z",
            "finalization_date": "2017-08-02T19:26:08Z",
            "btn_ref": "srctok-111",
            "line_items": [
            {
                "identifier": "sku-123",
                "total": 2000,
                "quantity": 1,
                "description": "pillow"
            }
            ]
        ]
        
        Alamofire.request("http://127.0.0.1:5000/user/Sue", method: .post, parameters: parameters2, encoding: JSONEncoding(options: []))
        
    }


}

