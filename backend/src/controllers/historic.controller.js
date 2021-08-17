const historicCtrl = {};
const axios = require("axios");
const Commit = require("../logic/commit")

const comm = new Commit();

historicCtrl.getCommits = (req, res) => {
    const url = "https://api.github.com/repos/dijad/fulltimeforce-test/events"
    axios.get(url)
        .then(function (response) {
            const commits = comm.getCommits(response.data);
            res.status(200).json(commits)
        })
        .catch(function (error) {
            // handle error
            res.status(400).json(error);
        })
}

module.exports = historicCtrl
