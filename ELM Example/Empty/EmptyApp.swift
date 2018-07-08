//
//  EmptyApp.swift
//  ELM Example
//
//  Created by Ivan Foong on 7/8/18.
//  Copyright © 2018 Ivan Foong. All rights reserved.
//

import ELM
import VirtualViews

public struct EmptyApp {
    
    public init() { }
}

extension EmptyApp: RootComponent {
    
    public enum Message { }
    
    public var viewController: ViewController<Message> {
        return .viewController(View<Message>.label(text: "Hello, world"))
    }
    
    mutating public func send(_: EmptyApp.Message) -> [Command<EmptyApp.Message>] {
        return []
    }
    
    
    public var subscriptions: [Subscription<Message>] {
        return []
    }
}

extension EmptyApp.Message: Equatable {
    public static func ==(lhs: EmptyApp.Message, rhs: EmptyApp.Message) -> Bool {
        // todo
        return false
    }
}

