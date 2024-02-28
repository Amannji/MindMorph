//
//  CodeView.swift
//  MindMorph
//
//  Created by Aman Gupta on 25/02/24.
//

import SwiftUI


struct CodeView: View {
    @State var activities = []
    @State private var selectedActionGroup: ActionGroup = CodeDataSource.actionGroups[0]
    @State var codeDetailViewActive: Bool = false
    @State private var showInfo = false
    @EnvironmentObject var vm: CodeViewModel
    var backgroundColor : Color = Color(UIColor.systemBackground)
    var viewHeight: CGFloat {
            return max(UIScreen.main.bounds.width, UIScreen.main.bounds.height - 300)
        }
    
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
            if vm.executeState{
                bottomDrawer
            }
        }
    }
    
}

struct CodeView_Previews: PreviewProvider {
    static var previews: some View {
        @StateObject var vm = CodeViewModel()
        CodeView()
            .environmentObject(vm)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
            .previewInterfaceOrientation(.landscapeRight)
    }
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
                HStack(spacing:70){
                    Text("Goal: Experiment with different activities to see its impact on overall brain health")
                        .fixedSize(horizontal: false, vertical: true)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 10)
                    
                    Image(systemName: "info.circle")
                        .font(.title)
                        .onTapGesture {
                            showInfo = true
                        }
                        .sheet(isPresented: $showInfo, content: {
                            ZStack(alignment:.topTrailing){
                                InfoView(showInfo: $showInfo)
                            }
                                
                        })
                }
                Text("Steps:")
                Text("1. Choose a sub-group of activities of its kind. eg Food")
                Text("2. Choose the activity command you most likely want to do")
                Text("3. Press \"Run My Code\" button")
                Text("For fun, Try running a bunch of activities together and also \ncheck out the info section for additional insights")
                    .fixedSize(horizontal: false, vertical: true)
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
                            ForEach(selectedActionGroup.actions.filter{ action in
                                !$vm.blocks.contains{ block in
                                    return block.id == action.id
                                }
                            }){action in
                                CodeActionTab(action:action)
                                    .padding(.horizontal,5)
                            }
                        }
                    }
                }
            }
            VStack{
                ScrollView{
                    ForEach(selectedActionGroup.actions.filter{ action in
                        !$vm.blocks.contains{ block in
                            return block.id == action.id
                        }
                    }){ action in
                        CodeBlockCell(action: action)
                            .padding(.horizontal)
                    }
                }
            }
            .padding(.top,10)
            .frame(height: codeDetailViewActive ? viewHeight/2: 0 )
            
        }
        .background(Color.white)
        .zIndex(3)
    }
}





