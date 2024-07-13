function delayedResultPromise(n1, n2, delayTime) {
    return new Promise((resolve) => {
        setTimeout(() => {
            resolve(n1+n2);
        },delayTime);
    });
}

async function main() {
    const result = await delayedResultPromise(4, 5, 3000);
    console.log(result);
}

main(); 