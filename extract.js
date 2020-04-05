const GITHUB_REF = process.argv[2];

const PULL_REGEX = /\/[0-9]+/i;

if (PULL_REGEX.test(GITHUB_REF)) {
    const [PULL_REQUEST_NUMBER] = PULL_REGEX.exec(GITHUB_REF);
    process.stdout.write(PULL_REQUEST_NUMBER.slice(1, PULL_REQUEST_NUMBER.length));
} else {
    process.stdout.write('FAILURE');
}