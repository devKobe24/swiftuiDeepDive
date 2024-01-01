//
//  ConversationView.swift
//  Messenger
//
//  Created by Minseong Kang on 1/1/24.
//

import SwiftUI

struct ConversationListView: View {
	let usernames = ["Joe", "Jill", "Bob"]
	
    var body: some View {
        VStack {
					NavigationView {
						ScrollView(.vertical) {
							ForEach(usernames, id: \.self) { name in
								NavigationLink(
									destination: ChatView(otherUsername: name),
									label: {
										HStack {
											Circle()
												.frame(width: 65, height: 65)
												.foregroundColor(Color.pink)
											
											Text(name)
												.bold()
												.foregroundColor(Color(.label))
												.font(.system(size: 32))
											Spacer()
										}
										.padding()
									})
							}
						}
						.navigationTitle("Conversations")
					}
        }
    }
}

#Preview {
	ConversationListView()
}
