//
//  DynamicLinkUrlToDeeplinkMapper.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Foundation

public protocol DynamicLinkUrlToDeeplinkMapper {

    func map(url: URL) -> Deeplink
}
