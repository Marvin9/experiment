const [,,hook, user, comment] = process.argv;

if (hook && user && comment) {
    if (hook !== 'created' || user !== 'Marvin9') process.exit(1);
    if (
        comment.trim().toLowerCase() !== 'bottestthis'
    ) process.exit(1);
} else process.exit(1);