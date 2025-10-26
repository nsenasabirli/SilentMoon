import SwiftUI

struct SignUpView: View {
    @Environment(\.dismiss) var dismiss
    @State private var name = "afsar"
    @State private var email = "imshuvo97@gmail.com"
    @State private var password = "........"
    @State private var agreedToPolicy = false
    @State private var showPassword = false
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack(spacing: 24) {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 60)
                Text("Create your account")
                    .font(.system(size: 28, weight: .bold))
                    .padding(.top, 40)
                Spacer()
                VStack(spacing: 16) {
                    SocialButton(icon: "f", title: "CONTINUE WITH FACEBOOK", color: Color(hex: "7583CA"))
                    SocialButton(icon: "G", title: "CONTINUE WITH GOOGLE", color: .white, textColor: .black)
                }
                .padding(.horizontal, 20)
                HStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                    Text("OR LOG IN WITH EMAIL")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.horizontal, 8)
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 24)
                VStack(spacing: 16) {
                    CustomTextField(placeholder: "Name", text: $name, hasCheckmark: true)
                    CustomTextField(placeholder: "Email", text: $email, hasCheckmark: true)
                    CustomTextField(placeholder: "Password", text: $password, isSecure: !showPassword, showPasswordToggle: true, showPassword: $showPassword)
                }
                .padding(.horizontal, 20)
                HStack(spacing: 12) {
                    Button {
                        agreedToPolicy.toggle()
                    } label: {
                        Image(systemName: agreedToPolicy ? "checkmark.square.fill" : "square")
                            .font(.system(size: 24))
                            .foregroundColor(agreedToPolicy ? Color(hex: "8E97FD") : .gray)
                    }
                    HStack(spacing: 4) {
                        Text("I have read the")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        Text("Privacy Policy")
                            .font(.system(size: 14))
                            .foregroundColor(Color(hex: "8E97FD"))
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 8)
                Button {
                    // Handle sign up
                } label: {
                    Text("GET STARTED")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(Color(hex: "8E97FD"))
                        .cornerRadius(28)
                }
                .padding(.horizontal, 20)
                .padding(.top, 16)
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
