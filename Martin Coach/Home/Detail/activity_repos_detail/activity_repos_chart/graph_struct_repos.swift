//
//  graph_struct_repos_mini.swift
//  Martin Coach
//
//  Created by Nam on 27/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct graph_struct_repos_test: Identifiable {
    var id = UUID().uuidString
    var time_start: Int // form timestamp
    var time_end: Int // form timestamp
    var animate: Bool = false
}

var sample_analytics_test: [graph_struct_repos_test] = [
    //temps avant no data
    graph_struct_repos_test(time_start: 1688749200, time_end: 1688749200), //8
    graph_struct_repos_test(time_start: 1688835600, time_end: 1688835600), //9
    graph_struct_repos_test(time_start: 1688922000, time_end: 1688922000), //10
    graph_struct_repos_test(time_start: 1689008400, time_end: 1689008400), //11
    graph_struct_repos_test(time_start: 1689094800, time_end: 1689094800), //12
    graph_struct_repos_test(time_start: 1689181200, time_end: 1689181200), //13
    graph_struct_repos_test(time_start: 1689267600, time_end: 1689267600), //14
    graph_struct_repos_test(time_start: 1689354000, time_end: 1689354000), //15
    graph_struct_repos_test(time_start: 1689440400, time_end: 1689440400), //16
    graph_struct_repos_test(time_start: 1689526800, time_end: 1689526800), //17
    graph_struct_repos_test(time_start: 1689613200, time_end: 1689613200), //18
    graph_struct_repos_test(time_start: 1689699600, time_end: 1689699600), //19
    graph_struct_repos_test(time_start: 1689786000, time_end: 1689786000), //20
    graph_struct_repos_test(time_start: 1689872400, time_end: 1689872400), //21
    graph_struct_repos_test(time_start: 1689958800, time_end: 1689958800), //22
    graph_struct_repos_test(time_start: 1690045200, time_end: 1690045800), //23
    
    
    graph_struct_repos_test(time_start: 1690162200, time_end: 1690165800), // 24/7/2023 8h30 - 9h30
    //graph_struct_repos_test(time_start: 1690176000, time_end: 1690180800), // 24/7/2023 12h20 - 13h40
    //graph_struct_repos_test(time_start: 1690193400, time_end: 1690206900), // 24/7/2023 17h10 - 20h55
    
    graph_struct_repos_test(time_start: 1690248900, time_end: 1690254600), // 25/7/2023 8h35 - 10h10
    //graph_struct_repos_test(time_start: 1690269300, time_end: 1690283400), // 25/7/2023 14h15 - 18h10
    //graph_struct_repos_test(time_start: 1690296000, time_end: 1690301400), // 25/7/2023 21h40 - 23h10
    
    graph_struct_repos_test(time_start: 1690323000, time_end: 1690347900), // 26/7/2023 5h10 - 12h05
    //graph_struct_repos_test(time_start: 1690353600, time_end: 1690377000), // 26/7/2023 13h40 - 20h10
    
    graph_struct_repos_test(time_start: 1690425000, time_end: 1690471200), // 27/7/2023 9h30 - 22h20
    
    graph_struct_repos_test(time_start: 1690511400, time_end: 1690557600), // 28/7/2023 9h30 - 22h20
    
    graph_struct_repos_test(time_start: 1690589400, time_end: 1690593600), // 29/7/2023 7h10 - 8h20
    //graph_struct_repos_test(time_start: 1690598400, time_end: 1690614600), // 29/7/2023 9h40 - 14h10
    //graph_struct_repos_test(time_start: 1690623000, time_end: 1690632600), // 29/7/2023 16h30 - 19h10
    //graph_struct_repos_test(time_start: 1690638600, time_end: 1690644900), // 29/7/2023 20h05 - 22h35
    
    //graph_struct_repos_test(time_start: 1690686300, time_end: 1690706100), // 30/7/2023 10h05 - 15h35
    graph_struct_repos_test(time_start: 1690729200, time_end: 1690732800), // 30/7/2023 22h00 - 23h00
    
    //graph_struct_repos_test(time_start: 1690711500, time_end: 1690731900), // 30/7/2023 17h05 - 22h45
    //graph_struct_repos_test(time_start: 1690711500, time_end: 1690731900), // 30/7/2023 17h05 - 22h45
    graph_struct_repos_test(time_start: 1691489100, time_end: 1691507100), // 08/08/2023 17h05 - 22h05
    
    
]

//timestamp translate : https://xuanthulab.net/unix-timestamp-chuyen-doi-thoi-gian-unix.html
