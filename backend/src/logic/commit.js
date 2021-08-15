class Commit {
    constructor() { }

    getCommits(data) {
        const commits = [];
        const myCommits = [];
        data.forEach(function (element) {
            commits.push(element.payload.commits)
        });
        for (let i = 0; i < commits.length; i++) {
            if (commits[i] != null && commits[i] != undefined) {
                for (let j = 0; j < commits[i].length; j++) {
                    myCommits.push(commits[i][j])
                }
            }
        }
        return myCommits
    }
}

module.exports = Commit;