import SwiftUI

struct CustomTextField: View {
    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    var hasCheckmark: Bool = false
    var showPasswordToggle: Bool = false
    @Binding var showPassword: Bool
    init(placeholder: String, text: Binding<String>, isSecure: Bool = false, hasCheckmark: Bool = false, showPasswordToggle: Bool = false, showPassword: Binding<Bool> = .constant(false)) {
        self.placeholder = placeholder
        self._text = text
        self.isSecure = isSecure
        self.hasCheckmark = hasCheckmark
        self.showPasswordToggle = showPasswordToggle
        self._showPassword = showPassword
    }
    var body: some View {
        HStack {
            if isSecure {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 16))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 16))
            }
            if hasCheckmark && !text.isEmpty {
                Image(systemName: "checkmark")
                    .foregroundColor(.green)
            }
            if showPasswordToggle {
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
        .background(Color(hex: "F5F5F5"))
        .cornerRadius(15)
    }
}
