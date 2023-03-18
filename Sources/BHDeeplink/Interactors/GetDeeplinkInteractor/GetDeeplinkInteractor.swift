//
//  GetDeeplinkInteractor.swift
//  
//
//  Created by Oanea, George on 30.08.2022.
//

import Combine

public protocol GetDeeplinkInteractor {

    func execute() -> AnyPublisher<Deeplink, Never>
}
