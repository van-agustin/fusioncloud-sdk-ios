//
//  MessageHeader.swift
//  TestApplication
//
//  Created by loey on 1/30/22.
//  Copyright © 2022 loey. All rights reserved.
//

import Foundation
import ObjectMapper

public class MessageHeader : Mappable {
    
        public var messageClass: String?
        public var messageCategory: String?
        public var messageType: String?
        public var serviceID: String?
        public var protocolVersion: String?
        public var saleID: String!
        public var poiID: String!
    
    
    public required init?(map: Map) {}
    public required init(){}
    
     public func mapping(map: Map) {
         protocolVersion        <- map["ProtocolVersion"]
         messageClass           <- map["MessageClass"]
         messageCategory        <- map["MessageCategory"]
         messageType            <- map["MessageType"]
         serviceID              <- map["ServiceID"]
         saleID                 <- map["SaleID"]
         poiID                  <- map["POIID"]
     }
    
}
