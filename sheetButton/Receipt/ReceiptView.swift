//
//  ReceiptView.swift
//  sheetButton
//
//  Created by Boris Zinovyev on 08.09.2022.
//

import SwiftUI

class Reciept: ObservableObject {
    @Published var name = """
ООО "РЕНТЕЛ КАФЕ"
"""
    @Published var inn = "7704511011"
    @Published var kassir = "Тест Тестович Тестов"
    @Published var urAdres = "Москва, Сущевский Вал, 18"
    @Published var adres = "Москва, Ильинка, 9"
}

struct ReceiptView: View {
    
    @ObservedObject private var reciept = Reciept()
    
    var body: some View {
        List {
            Section {
                VStack(alignment: .center, spacing: 10) {
//MARK: - Logo
                    HStack {
                        Spacer()
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 50)
                                .clipped()
                        Spacer()
                    }
//MARK: - header
                    VStack {
                        Text("""
\(reciept.name)
""").modifier(FontModifier())
                        Text(reciept.urAdres)
                            .modifier(FontModifier())
                        Text(reciept.inn)
                            .modifier(FontModifier())
                        }
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [4]))
                                       .frame(height: 1)
                                       .foregroundColor(.primary)
//MARK: - Item NDS
                    VStack {
                        HStack {
                            Text("Sample Item").modifier(FontModifier())
                            
                            Spacer()
                            
                            Text("1  x").modifier(FontModifier())
                            Text("485.00").modifier(FontModifier())
                        }
                        HStack {
                            Text("НДС").modifier(FontModifier())
                            
                            
                            Text("20%").modifier(FontModifier())
                            Spacer()

                            Text("=485.00_НДС 20%").modifier(FontModifier())
                        }
                            
                            HStack {
                                Text("  Стоимость без скдок" ).modifier(FontModifier())
                                Spacer()
                                
                                Text("630.00        ").modifier(FontModifier())
                            }
                            
                            HStack {
                                Text("  Скидка 23%" ).modifier(FontModifier())
                                Spacer()
                                
                                Text("-145.00       ").modifier(FontModifier())
                                }
                            }
                            Line()
                                .stroke(style: StrokeStyle(lineWidth: 1, dash: [4]))
                                           .frame(height: 1)
                                           .foregroundColor(.primary)
//MARK: - Discont
                    VStack {
                        HStack {
                            Text("Всего скидки:")
                                .modifier(FontModifier())
                            
                            Spacer()
                        }
                        HStack {
                            Text("  Скидка 23%" ).modifier(FontModifier())
                            Spacer()
                            
                            Text("-145.00       ").modifier(FontModifier())
                            }
                        }
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [4]))
                                       .frame(height: 1)
                                       .foregroundColor(.primary)
//MARK: - Total
                    VStack {
                        HStack {
                            Text("ИТОГ")
                                .modifier(FontModifier())
                            Spacer()
                            
                            Text("=485.00")
                                .modifier(FontModifier())
                        }
                        HStack {
                            Text("НАЛИЧНЫМИ")
                                .modifier(FontModifier())
                            Spacer()
                            
                            Text("=485.00")
                                .modifier(FontModifier())
                        }
                        HStack {
                            Text("ПОЛУЧЕНО:")
                                .modifier(FontModifier())
                            Spacer()
                        }
                        HStack {
                            Text("НАЛИЧНЫМИ")
                                .modifier(FontModifier())
                            Spacer()
                            
                            Text("=485.00")
                                .modifier(FontModifier())
                        }
                        HStack {
                            Text("СУММА НДС 20%")
                                .modifier(FontModifier())
                            Spacer()
                            
                            Text("=80.83")
                                .modifier(FontModifier())
                        }
                        HStack {
                            Text(reciept.adres)
                                .lineLimit(1)
                                .modifier(FontModifier())
                            Spacer()
                        }
                        HStack {
                            Text("КАССИР")
                                .modifier(FontModifier())
                            Spacer()
                            
                            Text(reciept.kassir)
                                .modifier(FontModifier())
                        }
                        HStack {
                            Text("ОФД:")
                                .modifier(FontModifier())
                            Spacer()
                            
                            Text("Контур НТТ")
                                .modifier(FontModifier())
                        }
                        HStack {
                            Text("Сфайт ОФД:")
                                .modifier(FontModifier())
                            Spacer()
                            
                            Text("123")
                                .modifier(FontModifier())
                        }
//MARK: - Total QR
                    HStack(alignment: .top) {
                        VStack{
                            HStack {
                                Text("РН ККТ:0000000000006745")
                                    .modifier(FontModifier())
                                Spacer()
                            }
                            HStack {
                                Text("ЗН ККТ:0000000000022745")
                                    .modifier(FontModifier())
                                Spacer()
                            }
                            HStack {
                                Text("ФН:9999078902009777")
                                    .modifier(FontModifier())
                                Spacer()
                            }
                            HStack {
                                Text("ПРИХОД")
                                    .modifier(FontModifier())
                                Spacer()
                                
                                Text("28.07.22")
                                    .modifier(FontModifier())
                            }
                            HStack {
                                Text(reciept.inn)
                                    .modifier(FontModifier())
                                Spacer()
                            }
                            HStack {
                                Text("Сайт ФНС:")
                                    .modifier(FontModifier())
                                Spacer()
                                
                                Text("www.nalog.ru")
                                    .modifier(FontModifier())
                            }
                            HStack {
                                Text("СНО:ОСН")
                                    .modifier(FontModifier())
                                Spacer()
                                
                                Text("order:438796645")
                                    .modifier(FontModifier())
                            }
                            HStack {
                                Text("ФД:57")
                                    .modifier(FontModifier())
                                Spacer()
                                
                                Text("ФП:2154528057")
                                    .modifier(FontModifier())
                            }
                        }
                        
                        Image("qr")
                            .resizable()
                            .clipped()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(10)
                        }
                    }
                }
            }
            
//MARK: - Data
            Section {
                TextField("Название", text: $reciept.name)
            }
            Section {
                TextField("ИНН", text: $reciept.inn)
            }
            Section {
                TextField("Юридический адрес", text: $reciept.urAdres)
            }
            Section {
                TextField("Фактический адрес", text: $reciept.adres)
            }
            Section {
                TextField("Имя кассира", text: $reciept.kassir)
            }
            
        }.listStyle(.automatic)
    }
}


struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct FontModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 12, design: .monospaced))
            .foregroundColor(.primary)
            .lineLimit(1)
    }
}

struct ReceiptView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptView()
            .previewDevice("iPhone 11 Pro")
    }
}
