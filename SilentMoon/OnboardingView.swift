import SwiftUI

struct OnboardingView: View {
    @State private var goToWelcome = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "8E97FD")
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    VStack(spacing: 32) {
                        Spacer().frame(height: 36)
                        Image("silentmoon")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.white) // logo beyaz
                            .frame(width: 102, height: 32)
                            .opacity(0.9)
                        VStack(spacing: 8) {
                            Text("Hi Afşar, Welcome")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.white)
                            Text("to Silent Moon")
                                .font(.system(size: 24, weight: .regular))
                                .foregroundColor(.white)
                        }
                        .padding(.top, 16)
                        Text("Explore the app, Find some peace of mind to prepare for meditation.")
                            .font(.system(size: 16))
                            .foregroundColor(.white.opacity(0.7))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 38)
                            .padding(.top, 16)
                        Spacer() // logo ve başlık arası boşluk
                    }
                    Spacer()
                    Image("meditation_welcome") // figmadaki illüstrasyon ismi örnek
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280, height: 230)
                    Spacer()
                    Button(action: {
                        goToWelcome = true
                    }) {
                        Text("GET STARTED")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color(hex: "3F414E"))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 56)
                            .background(Color.white)
                            .cornerRadius(28)
                            .padding(.horizontal, 20)
                    }
                    .padding(.vertical, 36)
                }
            }
            .navigationDestination(isPresented: $goToWelcome) {
                WelcomeView()
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewDevice("iPhone 14 Pro")
    }
}
