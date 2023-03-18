//
//  PostDeeplinkInteractor.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine

public protocol PostDeeplinkInteractor {

    func execute(deepLink: Deeplink) -> AnyPublisher<Void, Never>
}
