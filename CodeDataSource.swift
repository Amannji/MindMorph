//
//  CodeDataSource.swift
//  MindMorph
//
//  Created by Aman Gupta on 25/02/24.
//

import Foundation
import SwiftUI

class CodeDataSource{
    
    
    static var parts = [
        Anatomy(partName:"Frontal Lobe",modelName:"FrontalLobe",info:"The frontal lobe is located at the front of the brain and is the largest of the four lobes. It plays a crucial role in higher cognitive functions, including decision-making, problem-solving, planning, reasoning, and voluntary movement. The primary motor cortex, located in the frontal lobe, controls voluntary movements of specific body parts. Additionally, the frontal lobe houses the prefrontal cortex, which is involved in personality, social behavior, emotional regulation, and impulse control."),
        Anatomy(partName:"Parietal Lobe",modelName:"ParietalLobe",info:"Situated behind the frontal lobe, the parietal lobe is responsible for processing sensory information from the body, including touch, pressure, temperature, and pain. The primary somatosensory cortex, located in the parietal lobe, receives and interprets sensory signals from various parts of the body. It enables individuals to perceive sensations such as texture, pressure, and temperature. The parietal lobe is also involved in spatial awareness, perception of movement, and coordination of visual and sensory inputs."),
        Anatomy(partName:"Temporal Lobe",modelName:"TemporalLobe",info:"Located on the sides of the brain, the temporal lobes are primarily responsible for auditory processing, language comprehension, memory formation, and emotional regulation. The primary auditory cortex, situated within the temporal lobe, receives and processes auditory information from the ears. It enables individuals to perceive and interpret sounds, including speech, music, and environmental noises. The temporal lobe also houses the hippocampus, which plays a crucial role in the formation and retrieval of long-term memories."),
        Anatomy(partName:"Occipital Lobe",modelName:"OccipitalLobe",info:"Positioned at the back of the brain, the occipital lobe is primarily responsible for processing visual information. The primary visual cortex, located within the occipital lobe, receives and interprets visual signals from the eyes. It enables individuals to perceive shapes, colors, movement, and depth. The occipital lobe also plays a role in visual perception, object recognition, and spatial orientation."),
        Anatomy(partName: "Cerebellum",modelName:"Cerebellum", info: "The brainstem is located at the base of the brain and connects the brain to the spinal cord. It controls basic life-sustaining functions such as breathing, heart rate, blood pressure, and digestion. The brainstem consists of several parts, including the medulla oblongata, pons, and midbrain. The medulla oblongata regulates involuntary functions such as breathing and heart rate. The pons serves as a relay center for transmitting signals between the cerebrum and cerebellum. The midbrain plays a role in controlling eye movement, auditory and visual reflexes, and motor coordination."),
        Anatomy(partName: "Brain Stem",modelName:"BrainStem", info: "The brainstem is located at the base of the brain and connects the brain to the spinal cord. It controls basic life-sustaining functions such as breathing, heart rate, blood pressure, and digestion. The brainstem consists of several parts, including the medulla oblongata, pons, and midbrain. The medulla oblongata regulates involuntary functions such as breathing and heart rate. The pons serves as a relay center for transmitting signals between the cerebrum and cerebellum. The midbrain plays a role in controlling eye movement, auditory and visual reflexes, and motor coordination.")
    ]
    
    static var actionGroups: [ActionGroup]{
        [
            food, exercise, entertainment, hygiene, cognitiveAgility
        ]
    }
    
    static var neuroTransmittersInfo:[NeuroTransmitterInfo]{
        [
            dopamine, serotonin, acetylcholine, gaba, glutamate
        ]
    }
    
    static var food:ActionGroup{
        ActionGroup(
            groupName:"Food",
            iconName:"fork.knife",
            color: Color.orange,
            actions:[
                Action(
                    code: "Cook()",
                    description: "Prepare and eat dishes rich in nutrients",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: -10, gaba: 5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 10, perception: 20, emotionalRegulation: 10, executiveFunction: 10)
                ),
                Action(
                    code: "Eat Fruits()",
                    description: "Replenish vitamins and make more collagen",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 15, attention: 15, perception: 15, emotionalRegulation: 15, executiveFunction: 15)
                ),
                Action(
                    code: "Drink Beer()",
                    description: "Gives you an instant dizzy feeling.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 0, acetylcholine: -10, gaba: -10, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: -5, attention: -5, perception: -5, emotionalRegulation: -5, executiveFunction: -5)
                ),
                Action(
                    code: "Eat Vegetables()",
                    description: "Boost your immune system and improve digestion.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 15, attention: 15, perception: 10, emotionalRegulation: 10, executiveFunction: 10)
                ),
                Action(
                    code: "Hydrate with Water()",
                    description: "Maintain hydration levels and support body functions.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 0, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 0, attention: 0, perception: 0, emotionalRegulation: 0, executiveFunction: 0)
                ),
                Action(
                    code: "Eat Dark Chocolate()",
                    description: "Boosts mood and cognitive function.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Consume Green Tea()",
                    description: "Provides antioxidants and promotes relaxation.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 5, gaba: 5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Eat Nuts()",
                    description: "Improves heart health and cognitive function.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Consume Omega-3 Fatty Acids()",
                    description: "Supports brain health and reduces inflammation.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Drink Green Smoothie()",
                    description: "Provides essential nutrients and boosts energy.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Consume Probiotics()",
                    description: "Improves gut health and boosts immunity.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Eat Leafy Greens()",
                    description: "Provides vitamins and minerals for overall health.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Consume Berries()",
                    description: "Provides antioxidants and supports brain health.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Drink Herbal Tea()",
                    description: "Promotes relaxation and reduces stress.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Consume Avocado()",
                    description: "Provides healthy fats and supports brain function.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Drink Lemon Water()",
                    description: "Detoxifies the body and boosts hydration.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Consume Seeds()",
                    description: "Provides essential nutrients and supports heart health.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Eat Whole Grains()",
                    description: "Provides fiber and essential nutrients for overall health.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                ),
                Action(
                    code: "Consume Yogurt()",
                    description: "Improves gut health and supports digestion.",
                    color: Color.orange,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 5, acetylcholine: 0, gaba: 0, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 5, executiveFunction: 5)
                )
            
            ]
        )
    }
    
    static var exercise: ActionGroup{
        ActionGroup(
            groupName:"Exercise",
            iconName:"dumbbell",
            color: Color.red,
            actions:[
                Action(
                    code: "Pull Day()",
                    description: "Engage in exercises to strengthen your back muscles.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "HIIT Workout Challenge()",
                    description: "Participate in a high-intensity interval training session.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 5, acetylcholine: 5, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 10, emotionalRegulation: 15, executiveFunction: 10)
                ),
                Action(
                    code: "Morning Run()",
                    description: "Start your day with a refreshing run.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Weightlifting()",
                    description: "Hit the gym and pump some iron.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 5, acetylcholine: 5, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 10, emotionalRegulation: 15, executiveFunction: 10)
                ),
                Action(
                    code: "Yoga Session()",
                    description: "Practice yoga for mental and physical well-being.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 10, acetylcholine: 5, gaba: 10, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 10, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Cycling()",
                    description: "Enjoy a scenic ride on your bicycle.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Swimming()",
                    description: "Take a refreshing swim in the pool.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Boxing Workout()",
                    description: "Train like a boxer for a high-intensity workout.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 5, acetylcholine: 5, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 10, emotionalRegulation: 15, executiveFunction: 10)
                ),
                Action(
                    code: "Jump Rope()",
                    description: "Jump rope for a fun and effective cardio exercise.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Trail Running()",
                    description: "Explore nature with a trail running adventure.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Pilates Class()",
                    description: "Join a pilates class for strength and flexibility.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 5, serotonin: 10, acetylcholine: 5, gaba: 10, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 10, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Rowing Workout()",
                    description: "Get a full-body workout with rowing exercises.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Sprint Intervals()",
                    description: "Boost your cardiovascular fitness with sprint intervals.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 5, acetylcholine: 5, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 10, emotionalRegulation: 15, executiveFunction: 10)
                ),
                Action(
                    code: "Gymnastics Practice()",
                    description: "Train like a gymnast for strength and agility.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Rock Climbing()",
                    description: "Challenge yourself with a thrilling rock climbing session.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 5, acetylcholine: 5, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 10, emotionalRegulation: 15, executiveFunction: 10)
                ),
                Action(
                    code: "Martial Arts Training()",
                    description: "Learn martial arts for physical and mental discipline.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 5, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 5, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Dance Class()",
                    description: "Join a dance class for fitness and fun.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 10, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 10, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Calisthenics Workout()",
                    description: "Train with bodyweight exercises for strength and endurance.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 5, acetylcholine: 5, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 10, emotionalRegulation: 15, executiveFunction: 10)
                ),
                Action(
                    code: "Circuit Training()",
                    description: "Complete a circuit of exercises for a full-body workout.",
                    color: Color.red,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 5, acetylcholine: 5, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 5, perception: 10, emotionalRegulation: 15, executiveFunction: 10)
                )

            ]
        )
    }
    
    static var entertainment:ActionGroup{
        ActionGroup(
            groupName:"Entertainment",
            iconName:"play.tv",
            color: Color.yellow,
            actions:[
                Action(
                    code: "Explore Virtual Reality Gaming()",
                    description: "Experience the thrill of immersive virtual reality gaming, exploring virtual worlds and engaging in exciting adventures.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 25, serotonin: 15, acetylcholine: 10, gaba: 10, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 20, attention: 20, perception: 15, emotionalRegulation: 20, executiveFunction: 20)
                ),
                Action(
                    code: "Attend a Live Music Concert()",
                    description: "Enjoy live performances by your favorite artists at a music concert, dancing and singing along to your favorite songs.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 20, serotonin: 20, acetylcholine: 15, gaba: 10, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 15, attention: 20, perception: 20, emotionalRegulation: 25, executiveFunction: 15)
                ),
                Action(
                    code: "Binge-watch a Korean Drama()",
                    description: "Spend hours engrossed in a captivating Korean drama series.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 20, serotonin: -10, acetylcholine: -10, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: -5, attention: 20, perception: 10, emotionalRegulation: 10, executiveFunction: -5)
                ),
                Action(
                    code: "Play a strategy-based game()",
                    description: "Test your skills in a challenging strategy game.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: -5, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 15, perception: 20, emotionalRegulation: -10, executiveFunction: 5)
                ),
                Action(
                    code: "Watch a Comedy Special()",
                    description: "Laugh out loud while watching a stand-up comedy special.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 15, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 10, perception: 10, emotionalRegulation: 20, executiveFunction: 5)
                ),
                Action(
                    code: "Listen to a Podcast()",
                    description: "Enjoy informative or entertaining content through a podcast.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 15, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Read a Fiction Novel()",
                    description: "Get lost in a fictional world with an intriguing novel.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 15, perception: 10, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Play an Instrument()",
                    description: "Spend time playing a musical instrument for relaxation and enjoyment.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 10, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 10, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Watch a Nature Documentary()",
                    description: "Learn about the wonders of nature through a documentary film.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 15, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Attend a Live Concert()",
                    description: "Experience the thrill of live music at a concert.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 15, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 20, perception: 15, emotionalRegulation: 20, executiveFunction: 10)
                ),
                Action(
                    code: "Go to a Theme Park()",
                    description: "Enjoy rides and attractions at a fun-filled theme park.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 15, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 20, perception: 15, emotionalRegulation: 20, executiveFunction: 10)
                ),
                Action(
                    code: "Watch a Sci-Fi Movie()",
                    description: "Explore futuristic worlds and technologies in a sci-fi movie.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 15, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Explore Virtual Reality()",
                    description: "Immerse yourself in virtual reality experiences.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 10, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 20, perception: 15, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Visit an Art Gallery()",
                    description: "Admire artworks and gain inspiration at an art gallery.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 15, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 20, perception: 15, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Attend a Stand-up Comedy Show()",
                    description: "Laugh along with comedians at a stand-up comedy show.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 10, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 15, perception: 15, emotionalRegulation: 20, executiveFunction: 10)
                ),
                Action(
                    code: "Play an Escape Room Game()",
                    description: "Challenge yourself with puzzles and mysteries in an escape room game.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 15, perception: 15, emotionalRegulation: 20, executiveFunction: 10)
                ),
                Action(
                    code: "Watch a Nature Documentary()",
                    description: "Learn about the wonders of nature through a documentary film.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 15, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
            
            ]
        )
    }
//
    static var hygiene: ActionGroup{
        ActionGroup(
            groupName:"Hygiene",
            iconName:"bubbles.and.sparkles",
            color: Color.green,
            actions:[
                Action(
                    code: "Binge-watch a Korean Drama()",
                    description: "Spend hours engrossed in a captivating Korean drama series.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 20, serotonin: -10, acetylcholine: -10, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: -5, attention: 20, perception: 10, emotionalRegulation: 10, executiveFunction: -5)
                ),
                Action(
                    code: "Play a strategy-based game()",
                    description: "Test your skills in a challenging strategy game.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: -5, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 15, perception: 20, emotionalRegulation: -10, executiveFunction: 5)
                ),
                Action(
                    code: "Watch a Comedy Special()",
                    description: "Laugh out loud while watching a stand-up comedy special.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 15, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 10, perception: 10, emotionalRegulation: 20, executiveFunction: 5)
                ),
                Action(
                    code: "Listen to a Podcast()",
                    description: "Enjoy informative or entertaining content through a podcast.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 15, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Read a Fiction Novel()",
                    description: "Get lost in a fictional world with an intriguing novel.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 15, perception: 10, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Play an Instrument()",
                    description: "Spend time playing a musical instrument for relaxation and enjoyment.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 10, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 10, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Watch a Nature Documentary()",
                    description: "Learn about the wonders of nature through a documentary film.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 15, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Attend a Live Concert()",
                    description: "Experience the thrill of live music at a concert.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 15, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 20, perception: 15, emotionalRegulation: 20, executiveFunction: 10)
                ),
                Action(
                    code: "Go to a Theme Park()",
                    description: "Enjoy rides and attractions at a fun-filled theme park.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 15, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 20, perception: 15, emotionalRegulation: 20, executiveFunction: 10)
                ),
                Action(
                    code: "Watch a Sci-Fi Movie()",
                    description: "Explore futuristic worlds and technologies in a sci-fi movie.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 15, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Explore Virtual Reality()",
                    description: "Immerse yourself in virtual reality experiences.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 10, gaba: -5, glutamate: 0),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 20, perception: 15, emotionalRegulation: 10, executiveFunction: 5)
                ),
                Action(
                    code: "Visit an Art Gallery()",
                    description: "Admire artworks and gain inspiration at an art gallery.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 15, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 20, perception: 15, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Attend a Stand-up Comedy Show()",
                    description: "Laugh along with comedians at a stand-up comedy show.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 10, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 15, perception: 15, emotionalRegulation: 20, executiveFunction: 10)
                ),
                Action(
                    code: "Play an Escape Room Game()",
                    description: "Challenge yourself with puzzles and mysteries in an escape room game.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 10, gaba: 0, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 10, attention: 15, perception: 15, emotionalRegulation: 20, executiveFunction: 10)
                ),
                Action(
                    code: "Watch a Nature Documentary()",
                    description: "Learn about the wonders of nature through a documentary film.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 15, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                ),
                Action(
                    code: "Take a Cooking Class()",
                    description: "Learn new culinary skills and techniques in a cooking class.",
                    color: Color.yellow,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 5, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 5, attention: 15, perception: 10, emotionalRegulation: 15, executiveFunction: 5)
                )

            ]
        )
    }
//
    static var cognitiveAgility: ActionGroup{
        ActionGroup(
            groupName:"Critical Thinking",
            iconName:"brain",
            color:Color.gray,
            actions:[
                Action(
                    code: "Win the Student Swift Challenge()",
                    description: "Participate and emerge victorious in the Student Swift Challenge, showcasing your coding skills and creativity.",
                    color: Color.gray,
                    chemicalChange: ChemicalLevelsChange(dopamine: 30, serotonin: 20, acetylcholine: 10, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 20, attention: 25, perception: 20, emotionalRegulation: 15, executiveFunction: 20)
                ),
                Action(
                    code: "Play Crossword()",
                    description: "Enhance vocabulary and problem-solving skills by completing crossword puzzles.",
                    color: Color.gray,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 20, gaba: 5, glutamate: 5),
                    abilityChange: AbilityLevelsChange(memory: 20, attention: 15, perception: 15, emotionalRegulation: 10, executiveFunction: 15)
                ),
                Action(
                    code: "Play Sudoku()",
                    description: "Boost logical thinking and numerical skills by solving Sudoku puzzles.",
                    color: Color.gray,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 20, gaba: 5, glutamate: 5),
                    abilityChange: AbilityLevelsChange(memory: 20, attention: 15, perception: 15, emotionalRegulation: 10, executiveFunction: 15)
                ),
                Action(
                    code: "Read a Book()",
                    description: "Exercise the mind and expand knowledge by reading a book.",
                    color: Color.gray,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 15, acetylcholine: 20, gaba: 5, glutamate: 5),
                    abilityChange: AbilityLevelsChange(memory: 20, attention: 15, perception: 15, emotionalRegulation: 10, executiveFunction: 15)
                ),
                Action(
                    code: "Learn a New Language()",
                    description: "Challenge the brain and improve cognitive function by learning a new language.",
                    color: Color.gray,
                    chemicalChange: ChemicalLevelsChange(dopamine: 15, serotonin: 10, acetylcholine: 20, gaba: 5, glutamate: 5),
                    abilityChange: AbilityLevelsChange(memory: 20, attention: 15, perception: 15, emotionalRegulation: 10, executiveFunction: 15)
                ),
                Action(
                    code: "Attend a Lecture()",
                    description: "Engage your mind and learn new concepts by attending educational lectures and seminars.",
                    color: Color.gray,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 15, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 15, attention: 20, perception: 15, emotionalRegulation: 10, executiveFunction: 15)
                ),
                Action(
                    code: "Play Chess()",
                    description: "Exercise your strategic thinking and problem-solving skills by playing a game of chess.",
                    color: Color.gray,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 15, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 15, attention: 20, perception: 15, emotionalRegulation: 10, executiveFunction: 15)
                ),
                Action(
                    code: "Practice Meditation()",
                    description: "Calm your mind and improve focus and concentration through regular meditation practice.",
                    color: Color.gray,
                    chemicalChange: ChemicalLevelsChange(dopamine: 10, serotonin: 10, acetylcholine: 15, gaba: 5, glutamate: -5),
                    abilityChange: AbilityLevelsChange(memory: 15, attention: 20, perception: 15, emotionalRegulation: 10, executiveFunction: 15)
                ),
            ]
        )
    }
    
    static var dopamine: NeuroTransmitterInfo{
        NeuroTransmitterInfo(
            name:"Dopamine",
            function:"Dopamine is often referred to as the \"feel-good\" neurotransmitter because of its role in pleasure, reward, and motivation. It regulates mood, attention, and movement, and plays a crucial role in reinforcing behaviors associated with pleasure and reward.",
            significance:"Dopamine is involved in various cognitive functions, including learning, memory, and decision-making. Imbalances in dopamine levels have been linked to conditions such as depression, addiction, and Parkinson's disease."
        )
    }
    
    static var serotonin: NeuroTransmitterInfo{
        NeuroTransmitterInfo(
            name:"Serotonin",
            function:"Serotonin is known as the \"happiness hormone\" and is involved in regulating mood, sleep, appetite, and social behavior. It helps to promote feelings of well-being, calmness, and emotional stability.",
            significance: "Serotonin plays a critical role in maintaining emotional balance and mental health. Low serotonin levels have been associated with mood disorders such as depression, anxiety, and obsessive-compulsive disorder (OCD)."
        )
    }
    
    static var acetylcholine: NeuroTransmitterInfo{
        NeuroTransmitterInfo(
            name:"Acetylcholine",
            function:"Acetylcholine is essential for learning, memory, and muscle contraction. It is involved in cognitive processes such as attention, arousal, and alertness, as well as regulating the autonomic nervous system.",
            significance:"Acetylcholine is crucial for cognitive function and is implicated in conditions such as Alzheimer's disease, where there is a decline in acetylcholine-producing neurons."
        )
    }
    
    static var gaba: NeuroTransmitterInfo{
        NeuroTransmitterInfo(
            name:"Gaba",
            function:"GABA is the primary inhibitory neurotransmitter in the brain, meaning it helps to reduce neuronal excitability and regulate the overall balance between excitation and inhibition. It promotes relaxation, reduces anxiety, and induces sleep.",
            significance:"GABA is essential for maintaining emotional stability and preventing overstimulation of the nervous system. Imbalances in GABA levels have been linked to anxiety disorders, epilepsy, and insomnia."
        )
    }
    
    static var glutamate: NeuroTransmitterInfo{
        NeuroTransmitterInfo(
            name: "Glutamate",
            function:"Glutamate is the most abundant excitatory neurotransmitter in the brain, playing a key role in synaptic plasticity, learning, and memory. It is involved in transmitting signals between neurons and regulating brain development." ,
            significance: "Glutamate is essential for cognitive function and is involved in various neurological conditions, including stroke, traumatic brain injury, and neurodegenerative diseases like Alzheimer's and Parkinson's.")
    }
    
}

