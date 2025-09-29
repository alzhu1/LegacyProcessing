function testWrapper(text) {
    return function test() {
        document.getElementById("frame").src = `./${text}`;
    };
}

let buttons = [
    'SampleAssignment',
    'OriginalDesign',
    'Lightning',
    'Chemotaxis',
    'SnowflakeCatcher',
    'Starfield',
    'AsteroidsGame',
    'SierpinskiTriangle',
    'OriginalFractal',
    'FractalTree',
    'Dice',
    'Minesweeper'
];

let buttons2 = [
    'CubeRotation',
    'SnarkyMagic8Ball',
    'Tron',
    'Pong',
    'Tron4Players'
]

let div = document.getElementById('buttons');
buttons.forEach(button => {
    let but = document.createElement('button');
    but.onclick = testWrapper(button);
    but.innerText = button;
    div.appendChild(but);
});

div.appendChild(document.createElement('br'));

buttons2.forEach(button => {
    let but = document.createElement('button');
    but.onclick = testWrapper(button);
    but.innerText = button;
    div.appendChild(but);
});
