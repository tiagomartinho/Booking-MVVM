import SwiftUI

struct BookingView: View {
    
    @ObservedObject var viewModel = BookingViewModel()
    
    var body: some View {
        switch viewModel.status {
        case .initial:
            bookingButton
        case .booking:
            ProgressView()
        case .booked:
            VStack(spacing: 12) {
                Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
                Text("Booked")
            }
        case .error:
            VStack(spacing: 12) {
                Image(systemName: "xmark.circle.fill").foregroundColor(.red)
                Text("Error Booking")
            }
        }
    }
    
    var bookingButton: some View {
        Button {
            viewModel.book()
        } label: {
            Text("Book")
        }
        .buttonStyle(.borderedProminent)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
