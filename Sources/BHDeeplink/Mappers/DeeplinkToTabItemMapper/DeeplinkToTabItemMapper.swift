//
//  DeeplinkToTabItemMapper.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

public protocol DeeplinkToTabItemMapper {

    func map(from model: Deeplink) -> Int?
}
