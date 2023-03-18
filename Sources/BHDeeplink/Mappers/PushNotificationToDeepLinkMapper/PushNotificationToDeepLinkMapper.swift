//
//  PushNotificationToDeepLinkMapper.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

public protocol PushNotificationToDeepLinkMapper {

    func map(from model: [AnyHashable: Any]) -> Deeplink
}
