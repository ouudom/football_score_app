import 'package:flutter/material.dart';
import 'package:soccer_app/views/results_view/widgets/custom_match_result.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample match data (replace with your actual data fetching)
    final List<Map<String, String>> matchData = [
      {
        'firstTeamLogo': 'assets/images/liverpool-logo-vector.png',
        'firstTeamName': 'Liverpool',
        'result': '3-1',
        'secondTeamLogo': 'assets/images/arsenal-logo-vector.png',
        'secondTeamName': 'Arsenal',
      },
      {
        'firstTeamLogo': 'assets/images/manchester-city-fc-logo.png',
        'firstTeamName': 'Man. City',
        'result': '4-0',
        'secondTeamLogo': 'assets/images/chelsea-fc-logo-preview.png',
        'secondTeamName': 'Chelsea',
      },
      {
        'firstTeamLogo': 'assets/images/tottenham-hotspur-fc-logo.png',
        'firstTeamName': 'Tottenham',
        'result': '2-1',
        'secondTeamLogo': 'assets/images/newcastle-united-logo-preview.png',
        'secondTeamName': 'Newcastle',
      },
      {
        'firstTeamLogo': 'assets/images/manchester-united-logo-vector.png',
        'firstTeamName': 'Man. Utd.',
        'result': '5-2',
        'secondTeamLogo': 'assets/images/crystal_palace_fc-logo_brandlogos.net_asddi.png',
        'secondTeamName': 'C. Palace',
      },
      {
        'firstTeamLogo': 'assets/images/leicester-city-vector-logo.png',
        'firstTeamName': 'Leicester',
        'result': '3-1',
        'secondTeamLogo': 'assets/images/aston-villa-logo.png',
        'secondTeamName': 'A. Villa',
      },
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 30),
            child: Column(
              children: [
                Image.asset('assets/images/premier_league.png', width: 55),
                const SizedBox(height: 15),
                const Text(
                  'Premier League',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                const Text(
                  'English Championship',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Results',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      'Table',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        'Goals',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: matchData.length,
                  itemBuilder: (context, index) {
                    final match = matchData[index];
                    return Padding(
                      // Add padding between match results
                      padding: const EdgeInsets.only(top: 30),
                      child: CustomMatchResult(
                        firstTeamLogo: match['firstTeamLogo']!,
                        firstTeamName: match['firstTeamName']!,
                        result: match['result']!,
                        secondTeamLogo: match['secondTeamLogo']!,
                        secondTeamName: match['secondTeamName']!,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
