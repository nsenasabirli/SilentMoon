import SwiftUI

struct SocialButton: View {
    let icon: String
    let title: String
    let color: Color
    var textColor: Color = .white
    var body: some View {
        Button {
            // Handle social login
        } label: {
            HStack(spacing: 12) {
                Text(icon)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(textColor)
                    .frame(width: 24)
                Text(title)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(textColor)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            .background(color)
            .cornerRadius(28)
            .overlay(
                RoundedRectangle(cornerRadius: 28)
                    .stroke(Color.gray.opacity(0.2), lineWidth: color == .white ? 1 : 0)
            )
        }
    }
}
