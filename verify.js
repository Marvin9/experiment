const [,,hook, user] = process.argv;

if (hook && user && comment) {
    if (hook !== 'created' || user !== 'Marvin9') process.exit(1);
    const start = 4;
    const end = process.argv.length;
    let str = "";
    for (let i = start; i < end; i++) str += process.argv[i].toLowerCase();
    if (str !== 'bottestthis') process.exit(1);
} else process.exit(1);