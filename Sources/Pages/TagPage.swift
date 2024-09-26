//
//  Tags.swift
//
//
//  Created by sookim on 9/26/24.
//

import Foundation
import Ignite

struct Tags: TagPage {
    func body(tag: String?, context: PublishingContext) async -> [any BlockElement] {
        if let tag {
            Text(tag)
                .font(.title1)
                .foregroundStyle(.pink)
                .background(.pink)
        } else {
            Text("All tags")
                .font(.title1)
                .foregroundStyle(.pink)
                .background(.purple)
        }

        let articles = context.content(tagged: tag)

        List {
            for article in articles {
                Link(article)
            }
        }
    }
}
