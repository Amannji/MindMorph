//
//  MorphCodeView.swift
//  MindMorph
//
//  Created by Aman Gupta on 10/02/24.
//

import SwiftUI


struct CodeView: View {
    @State var activities = []
    @State private var selectedActionGroup: ActionGroup = CodeDataSource.actionGroups[0]
    @State var codeDetailViewActive: Bool = false
    @EnvironmentObject var vm: CodeViewModel
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                if vm.blocks.isEmpty {
                    topInfoBanner
                }
                
                ScrollView(.vertical){
                    VStack(spacing:100){
                        ForEach(Array(zip(vm.blocks.indices,vm.blocks)),id:\.0){ i,b in
                            SelectedBlockCell(action: b,index: i)
                        }
                    }
                }
            }
            .zIndex(1)
            .overlay{
                Rectangle()
                    .opacity(codeDetailViewActive ? 0.2:0)
            }
            
            bottomDrawer
                .frame(width:UIScreen.main.bounds.width/2)
            
        }
    }
  
}

#Preview {
    CodeView()
        .previewDevice("iPad Pro (12.9-inch) (6th generation)")
        .previewInterfaceOrientation(.landscapeRight)
}


struct ActivityTitleBtn: View{
    var title: String
    var image: String
    var index: Int
    @Binding var selectedTabIndex: Int
    var body: some View{
        HStack{
            Image(systemName: image)
            Text(title)
                .foregroundColor(selectedTabIndex == index ? .blue : .black)
        }
        .padding()
        .onTapGesture{
            selectedTabIndex = index
        }
    }
}


extension CodeView{
    
    public var topInfoBanner: some View{
        CardView{
            VStack(alignment: .leading){
                Text("Goal: Experiment with activities to see its impact on overall brainHealth")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 10)
                HStack{
                    Text("Steps:")
                    Image(systemName:"arrow.down")
                }
                Text("1. Choose an activity tab")
                Text("2. Choose the activity command you most likely want to do")
                Text("3. Press Run button")
                Text("For fun, Try running a bunch of activities together")
                    .padding(.top,10)
                    .fontWeight(.semibold)
            }
        }
    }

    public var ActionGroupBtns: some View{
        ScrollView(.horizontal){
            HStack{
                ForEach(CodeDataSource.actionGroups){actionGroup in
                    HStack{
                        Image(systemName: actionGroup.iconName)
                        Text(actionGroup.groupName)
                    }
                    .padding()
                    .onTapGesture{
                        selectedActionGroup = actionGroup
                    }
                    
                }
            }
        }
    }
    
    
    public var bottomDrawer: some View{
        VStack{
            VStack{
                HStack(spacing:100){
                   ActionGroupBtns
                    Image(systemName: codeDetailViewActive ? "arrow.down.square": "arrow.up.square")
                        .font(.system(size:30))
                        .onTapGesture {
                            codeDetailViewActive.toggle()
                        }
                }
                if !codeDetailViewActive{
                    ScrollView(.horizontal){
                        HStack(spacing:0){
                            ForEach(selectedActionGroup.actions){action in
                                CodeActionTab(action:action)
                                    .padding(.horizontal,5)
                            }
                        }
                    }
                }
            }
            VStack{
                ScrollView{
                    ForEach(selectedActionGroup.actions){ action in
                        CodeBlockCell(action: action)
                            .padding(.horizontal)
                    }
                }
            }
            .padding(.top,10)
            .frame(height: codeDetailViewActive ? UIScreen.main.bounds.height/2 : 0 )
            
        }
        .background(Color.white)
        .zIndex(3)
    }
}





