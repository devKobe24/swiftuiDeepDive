//
//  ChatView.swift
//  Messenger
//
//  Created by Minseong Kang on 1/1/24.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
			ScrollView(.vertical) {
				ChatRow(type: .sent)
					.padding(3)
				ChatRow(type: .received)
					.padding(3)
			}
    }
}

#Preview {
    ChatView()
}
