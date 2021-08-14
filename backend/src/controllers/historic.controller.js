const historicCtrl = {};
const axios = require("axios");

historicCtrl.getCommits = (req, res) => {
    const url = "https://api.github.com/repos/dijad/fulltimeforce-test/events"
    axios.get(url)
        .then(function (response) {
            const data = response.data;
            const commits = [];
            data.forEach(function (element) {
                commits.push(element.payload.commits)
            });
            res.status(200).json({ messazge: 'hola' })
        })
        .catch(function (error) {
            // handle error
            console.log(error);
        })
        .then(function () {
            // always executed
        });
}

module.exports = historicCtrl
