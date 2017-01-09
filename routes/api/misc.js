//
module.exports = function(app, transporter) {
    app.all('/api/*', function(req, res) {
        res.status(404).send({
            success: false,
            message: "404"
        });
        return;
    });
}
