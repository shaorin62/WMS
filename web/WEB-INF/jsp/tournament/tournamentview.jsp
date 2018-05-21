<%--
  Created by IntelliJ IDEA.
  User: shaor
  Date: 2018-05-09
  Time: 오전 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/coms/include/taglib.jsp"%>
<html>
<head>
    <script type="text/javascript" src="${ctx }/resources/node_modules/jquery-bracket/dist/jquery.bracket.min.js"></script>

    <link rel="stylesheet" type="text/css" href="${ctx }/resources/node_modules/jquery-bracket/dist/jquery.bracket.min.css" />

    <title>Tournament</title>
</head>
<body>

<div class="demo">
</div>


<script type="text/javascript">
    var singleElimination = {
        "teams": [              // Matchups
            ["Team 1", "Team 2"], // First match
            ["Team 3", "Team 4"]  // Second match
        ],
        "results": [            // List of brackets (single elimination, so only one bracket)
            [                     // List of rounds in bracket
                [                   // First round in this bracket
                    [1, 2],           // Team 1 vs Team 2
                    [3, 4]            // Team 3 vs Team 4
                ],
                [                   // Second (final) round in single elimination bracket
                    [5, 6],           // Match for first place
                    [7, 8]            // Match for 3rd place
                ]
            ]
        ]
    }

    var doubleElimination = {
        "teams": [
            ["Team 1", "Team 2"],
            ["Team 3", "Team 4"]
        ],
        "results": [            // List of brackets (three since this is double elimination)
            [                     // Winner bracket
                [[1, 2], [3, 4]],   // First round and results
                [[5, 6]]            // Second round
            ],
            [                     // Loser bracket
                [[7, 8]],           // First round
                [[9, 10]]           // Second round
            ],
            [                     // Final "bracket"
                [                   // First round
                    [11, 12],         // Match to determine 1st and 2nd
                    [13, 14]          // Match to determine 3rd and 4th
                ],
                [                   // Second round
                    [15, 16]          // LB winner won first round (11-12) so need a final decisive round
                ]
            ]
        ]
    }


    $('.demo').bracket({
        init: doubleElimination
    });


/*    $('.demo').bracket({
        init: null, // data to initialize
        save: null, // called whenever bracket is modified
        userData: null, // custom user data
        onMatchClick: null, // callback
        onMatchHover: null, // callback
        decorator: null, // a function
        skipSecondaryFinal: false,
        skipGrandFinalComeback: false,
        skipConsolationRound: false,
        dir: 'rl', // "rl" or  "lr",
        disableToolbar: false,
        disableTeamEdit: false,
        teamWidth: '', // number
        scoreWidth: '', // number
        roundMargin: '', // number
        matchMargin: '', // number
    });*/

</script>

</body>
</html>
