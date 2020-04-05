const [,,token, url] = process.argv;

const PULL_REGEX = /\/[0-9]+/i;
const [PULL_REQUEST_NUMBER] = PULL_REGEX.exec(url);

const github = require('@actions/github');

const octokit = new github.GitHub(token);
const comment = octokit.issues.createComment({
    ...github.context.repo,
    issue_number: PULL_REQUEST_NUMBER,
    body: `http://experiment-${PULL_REQUEST_NUMBER}.surge.sh`,
});