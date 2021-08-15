class Commit {
    constructor() { }

    getCommits(data) {
        const commits = [];
        const myCommits = [];
        data.forEach(function (element) {
            commits.push(element.payload.commits)
        });
        commits.forEach(function (element) {
            if (element != null && element != undefined) {
                for (let j = 0; j < element.length; j++) {
                    myCommits.push(element[j])
                }
            }
        })
        return myCommits
    }
}

module.exports = Commit;