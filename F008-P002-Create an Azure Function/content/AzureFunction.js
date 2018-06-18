module.exports = function (context, data) {
    context.log('Webhook was triggered!');

    // Fail gate
    context.res = {
        status: 400,
        body: { status: 'failed'}
    };

    // Pass gate
    // context.res = {
    //     body: { status: 'successful'}
    // };

    context.done();
}
