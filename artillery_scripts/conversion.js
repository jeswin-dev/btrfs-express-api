module.exports = {
    setCount: setCount
};
var i= 1;
function setCount(context, events, done) {
    i= i+1;
    context.vars.count = i;
    return done();
}