//
//  ResultView.swift
//  MindMorph
//
//  Created by Aman Gupta on 25/02/24.
//

import SwiftUI

struct ResultView: View {
    @Binding var brain: Brain
    @Binding var result: ExperimentResult
    var body: some View {
        ScrollView{
            VStack{
                CardView{
                 
                    VStack(alignment:.leading,spacing:40){
                        Text("NeuroChemical Composition Score")
                            .font(.largeTitle.bold())
                            
                        ProgressView(text:"Dopamine",progress:brain.dopamine.percentage, change:result.chemicalchangeFactor.dopamine)
                        ProgressView(text:"Serotonin",progress:brain.serotonin.percentage, change:result.chemicalchangeFactor.serotonin)
                        ProgressView(text:"Acetylcholine",progress:brain.acetylcholine.percentage,change: result.chemicalchangeFactor.acetylcholine)
                        ProgressView(text:"Gaba",progress:brain.gaba.percentage,change: result.chemicalchangeFactor.gaba)
                        ProgressView(text:"Glutamate",progress:brain.glutamate.percentage,change:result.chemicalchangeFactor.glutamate)
                    }
                    
                }
                
                CardView{
                    VStack(alignment:.leading,spacing:40){
                        Text("Mental Abilities Score")
                            .font(.largeTitle.bold())
                            
                        ProgressView(text:"Memory",progress: brain.memory.percentage, change:result.abilityChangeFactor.memory)
                        ProgressView(text:"Attention",progress: brain.attention.percentage,change:result.abilityChangeFactor.attention)
                        ProgressView(text:"Emotional \nRegulation",progress:brain.emotionalRegulation.percentage, change:result.abilityChangeFactor.emotionalRegulation)
                            .padding(.bottom,40)
                        ProgressView(text:"Problem \nSolving", progress: brain.executiveFunction.percentage, change: result.abilityChangeFactor.executiveFunction)
                            .padding(.bottom,40)
                        ProgressView(text:"Social Skills", progress:brain.perception.percentage,change:result.abilityChangeFactor.perception)
                            .padding(.bottom,20)
                        
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ResultView(brain: .constant(Brain(
        dopamine:Amount(0.2),
        serotonin:Amount(0.3),
        acetylcholine:Amount(0.4),
        gaba:Amount(0.2),
        glutamate:Amount(0.8),
        memory: Amount(0.5),
        attention: Amount(0.5),
        perception: Amount(0.5),
        emotionalRegulation: Amount(0.5),
        executiveFunction: Amount(0.5)
    )),
               result: .constant(ExperimentResult(chemicalchangeFactor: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 10, gaba: 10, glutamate: 0),abilityChangeFactor: AbilityLevelsChange(memory: 0, attention: 5, perception: 10, emotionalRegulation: 10, executiveFunction: 10))))
    
}

