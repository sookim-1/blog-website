import Foundation
import Ignite

struct Home: StaticPage {
    var title = "수킴의 개인 T.W.L"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            NavBar(name: "수킴의 개인 T.W.L", language: .korean)

            let orderedAllContext = context.content(ofType: "ko").sorted {
                $0.date > $1.date
            }

            for item in orderedAllContext {
                ContentPreview(for: item)
                    .contentPreviewStyle(MyCustomContentPreviewStyle())
                    .width(.max)
                    .margin(.vertical, 50)
                    .background(.white)
            }

            SocialFooter()
            IgniteFooter()
        }
    }
}

struct MyCustomContentPreviewStyle: ContentPreviewStyle {
    func body(content: Content, context: PublishingContext) -> BlockElement {
        Card(imageName: content.image) {
            Text(content.metadata["description"] as? String ?? "")
                .horizontalAlignment(.leading)
                .font(.title5)
                .fontWeight(.medium)
                .foregroundStyle(.darkEmphasis)
                .margin(.bottom, .none)
        } header: {
            Text {
                Link(content)
                    .role(.info)
            }
            .horizontalAlignment(.leading)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundStyle(.pink)
        } footer: {
            let tagLinks = content.tagLinks(in: context)

            if tagLinks.isEmpty == false {
                Group {
                    tagLinks
                }
                .style("margin-top: -5px")
            }
        }
    }
}
