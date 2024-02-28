import SwiftUI

struct ExperimentView: View {
    @State var result: ExperimentResult = ExperimentResult(
        chemicalchangeFactor: ChemicalLevelsChange(dopamine: 0, serotonin: 0, acetylcholine: 0, gaba: 0, glutamate: 0),
        abilityChangeFactor: AbilityLevelsChange(memory: 0, attention: 0, perception: 0, emotionalRegulation: 0, executiveFunction: 0)
                                                           
    )
    
    
    @State var brain:Brain = Brain(
        dopamine: Amount(0.1),
        serotonin: Amount(0.1),
        acetylcholine: Amount(0.1),
        gaba: Amount(0.1),
        glutamate: Amount(0.1),
        memory: Amount(0.2),
        attention: Amount(0.2),
        perception: Amount(0.2),
        emotionalRegulation: Amount(0.2),
        executiveFunction: Amount(0.2)
    )
    @StateObject var vm: CodeViewModel = CodeViewModel()
    @ObservedObject var scene = SceneConfigurator()
    @State var blocks:[Action] = []
    @State var selectedTab: Int = 0
    

    var body: some View {
        SplitView{
            CustomTabView(selectedTab: $selectedTab, brain: $brain, result: $result, vm: vm)
            ZStack(){
                
                    

                BrainModelView(sceneConfigurator: scene)
                    .onAppear{
                        scene.start()
                        scene.applyTexture1()
                    }
                    .onChange(of:brain.brainHealth){ health in
                        if brain.brainHealth > 80 {
                            scene.applyTexture4()
                        }
                        else if brain.brainHealth > 60 {
                            scene.applyTexture3()
                        }
                        else if brain.brainHealth > 40 {
                            scene.applyTexture2()
                        }
                        else{
                            scene.applyTexture1()
                        }
                    }
             
                //run
                VStack{
                    Text("Brain Health: \(String(brain.brainHealth))%")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    Spacer()
                    Button(action:{
                        if vm.executeState{
                            result = run()
                            selectedTab = 1
                            vm.executeState = false
                        }
                        else{
                            vm.blocks = []
                            selectedTab = 0
                            vm.executeState = true
                        }
                    }){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.secondary)
                            .frame(width:300, height:100)
                            .overlay{
                                HStack(spacing:10){
                                    if vm.executeState{
                                        Image(systemName: "arrowtriangle.right.fill")
                                            .foregroundColor(.white)
                                        Text("Run My Code")
                                            .foregroundColor(.white)
                                    }
                                    else{
                                        Image(systemName:"arrow.clockwise")
                                            .font(.system(size:40))
                                            .foregroundColor(.white)
                                        Text("Try Again")
                                            .foregroundColor(.white)
                                    }
                                    
                                }
                                .font(.title)
                            }
                    }
                }
                .padding(.vertical,20)
            }
                
        }
        .onReceive(vm.$blocks){ receivedBlocks in
                    self.blocks = receivedBlocks
                }
        
    }
    
    private func run()->ExperimentResult{
        
        for block in blocks{

            if block.chemicalChange.dopamine != 0 {
                let rr = brain.dopamine.calculate(block.chemicalChange.dopamine)
                if rr.hasChanged{
                    result.chemicalchangeFactor.dopamine += block.chemicalChange.dopamine
                }
            }
            
            if block.chemicalChange.acetylcholine != 0 {
                let rr = brain.acetylcholine.calculate(block.chemicalChange.acetylcholine)
                if rr.hasChanged{
                    result.chemicalchangeFactor.acetylcholine += block.chemicalChange.acetylcholine
                }
            }
            
            if block.chemicalChange.serotonin != 0 {
                let rr = brain.serotonin.calculate(block.chemicalChange.serotonin)
                if rr.hasChanged{
                    result.chemicalchangeFactor.serotonin += block.chemicalChange.serotonin
                }
            }
            
            if block.chemicalChange.gaba != 0 {
                let rr = brain.gaba.calculate(block.chemicalChange.gaba)
                if rr.hasChanged{
                    result.chemicalchangeFactor.gaba += block.chemicalChange.gaba
                }
            }
            if block.chemicalChange.glutamate != 0 {
                let rr = brain.glutamate.calculate(block.chemicalChange.glutamate)
                if rr.hasChanged{
                    result.chemicalchangeFactor.glutamate += block.chemicalChange.glutamate
                }
            }
            
            if block.abilityChange.memory != 0 {
                let rr = brain.memory.calculate(block.abilityChange.memory)
                if rr.hasChanged{
                    result.abilityChangeFactor.memory += block.abilityChange.memory
                }
            }
            
            if block.abilityChange.attention != 0 {
                let rr = brain.attention.calculate(block.abilityChange.attention)
                if rr.hasChanged{
                    result.abilityChangeFactor.attention += block.abilityChange.attention
                }
            }
            
            if block.abilityChange.perception != 0 {
                let rr = brain.perception.calculate(block.abilityChange.perception)
                if rr.hasChanged{
                    result.abilityChangeFactor.perception += block.abilityChange.perception
                }
            }
            
            if block.abilityChange.emotionalRegulation != 0{
                let rr = brain.emotionalRegulation.calculate(block.abilityChange.emotionalRegulation)
                if rr.hasChanged{
                    result.abilityChangeFactor.emotionalRegulation += block.abilityChange.emotionalRegulation
                }
            }
            
            if block.abilityChange.executiveFunction != 0 {
                let rr = brain.executiveFunction.calculate(block.abilityChange.executiveFunction)
                if rr.hasChanged{
                    result.abilityChangeFactor.executiveFunction += block.abilityChange.executiveFunction
                }
            }
            
        }
        return result
    }
}

#Preview {
    ExperimentView()
}
