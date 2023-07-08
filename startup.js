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

let div = document.getElementById('buttons');
buttons.forEach(button => {
    let but = document.createElement('button');
    but.onclick = testWrapper(button);
    but.innerText = button;
    div.appendChild(but);
});