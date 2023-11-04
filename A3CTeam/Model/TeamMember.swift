//
//  TeamMember.swift
//  A3CTeam
//
//  Created by Nikolai Grachev on 02.11.2023.
//

import Foundation

struct TeamMember {
    var name: String
    var surname: String
    var portrait: String
    
    static func getTeamMember() -> [TeamMember] {
        let personData = PersonData()
        var arrayOfMembers: [TeamMember] = []
        for i in 0..<personData.names.count {
            arrayOfMembers.append(TeamMember(name: personData.names[i],
                                    surname: personData.surnames[i],
                                    portrait: personData.portraits[i]))
        }
        return arrayOfMembers
    }
}

struct Achivement {
    var title: String
    var subtitle: String
    var icon: String
    
    static func getAchivement() -> [Achivement] {
        let achivementData = AchivementsData()
        var arrayOfAchivements: [Achivement] = []
        for i in 0..<achivementData.titles.count {
            arrayOfAchivements.append(Achivement(title: achivementData.titles[i],
                                    subtitle: achivementData.subtitles[i],
                                    icon: achivementData.subtitles[i]))
        }
        return arrayOfAchivements
    }
    
}
