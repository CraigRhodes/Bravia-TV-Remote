//
//  ViewController.swift
//  Bravia TV Remote
//
//  Created by Craig Rhodes on 4/6/17.
//  Copyright © 2017 Craig Rhodes. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var ip: String!
    var authKey: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }

    
    @IBAction func sendCommand(_ sender: Any) {
        let command: TVCommand
        
        switch view.tag {
        case 0:
            command = .numberZero
            break
        case 1:
            command = .numberOne
            break
        case 2:
            command = .numberTwo
            break
        case 3:
            command = .numberThree
            break
        case 4:
            command = .numberFour
            break
        case 5:
            command = .numberFive
            break
        case 6:
            command = .numberSix
            break
        case 7:
            command = .numberSeven
            break
        case 8:
            command = .numberEight
            break
        case 9:
            command = .numberNine
            break
        case 10:
            command = .power
            break
        default:
            print("Command not valid.")
            return
        }
        
        print("Sending command \"\(String(describing: command))\"")
        send(command: command)
    }
    
    func send(command: TVCommand) {
        let url = "http://\(ip!)/sony/IRCC"
        let headers: HTTPHeaders = [
            "Content-Type": "text/xml; charset=UTF-8",
            "SOAPACTION": "\"urn:schemas-sony-com:service:IRCC:1#X_SendIRCC\"",
            "X-Auth-PSK": authKey!
        ]
        let body =
            "<?xml version=\"1.0\"?>" +
                "<s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\" s:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\">" +
                "<s:Body>" +
                "<u:X_SendIRCC xmlns:u=\"urn:schemas-sony-com:service:IRCC:1\">" +
                "<IRCCCode>\(command.rawValue)</IRCCCode>" +
                "</u:X_SendIRCC>" +
                "</s:Body>" +
        "</s:Envelope>"
        
        Alamofire.request(url, method: .post, parameters: nil, encoding: body, headers: headers).validate().response { responseObject in
            
            guard responseObject.response?.statusCode == 200,
                responseObject.error == nil else {
                print("An error occurred: \(responseObject.error!)")
                return
            }

            print("\"\(String(describing: command))\" succeeded!")
            
        }
    }
    

}

extension String: ParameterEncoding {
    
    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        var request = try urlRequest.asURLRequest()
        request.httpBody = data(using: .utf8, allowLossyConversion: false)
        return request
    }
    
}
