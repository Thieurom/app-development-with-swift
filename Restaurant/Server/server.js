const express = require('express');
const morgan = require('morgan');
const bodyParser = require('body-parser');
const menu = require('./menu.json');

const server = express();
const PORT = 8090

server.use(morgan('tiny'));
server.use(express.static('public'));

server.get('/categories', (req, res) => {
    const categories = [...(new Set(menu.map(item => item.category)))];

    res.send({
        categories
    });
});

server.get('/menu', (req, res) => {
    const category = req.query.category;
    let items = menu

    if (category) {
        items = items.filter(item => item.category === category);
    }

    res.send({
        "items": items
    });
});

server.post('/order', bodyParser.json(), (req, res) => {
    if (req.is('json')) {
        const menuIds = req.body["menuIds"];

        if (menuIds && menuIds.length > 0) {
            res.send({
                "preparation_time": 30  // (minutes)
            });
        } else {
            res.end();
        }
    }
});

server.listen(PORT, () => {
    console.log(`Server is listening on port ${PORT} ...`);
});
