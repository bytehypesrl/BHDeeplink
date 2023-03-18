//
//  PostDynamicLinkDeeplinkInteractor.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine
import Foundation

public protocol PostDynamicLinkDeeplinkInteractor {

    func execute(url: URL) -> AnyPublisher<Void, Never>
}
