const canvas = document.getElementById("graph"),
    ctx = canvas.getContext('2d');

canvas.height *= 10;
canvas.width *= 9;
let w = canvas.width, h = canvas.height;


const baseHatchGap= w/16 ;


function redrawGraph(rad, factor) {
    let hatchWidth = 15;
    if (factor < 0.4) hatchWidth = 10;
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.lineWidth = 4   ;
    ctx.strokeStyle = 'black';

    // y axis
    ctx.beginPath();
    ctx.moveTo(w / 2, 10);
    ctx.lineTo(w / 2 - 15, 30);
    ctx.moveTo(w / 2, 10);
    ctx.lineTo(w / 2 + 15, 30);
    ctx.moveTo(w / 2, 10);
    ctx.lineTo(w / 2, h);
    ctx.stroke();
    ctx.closePath();

    // x axis
    ctx.beginPath();
    ctx.moveTo(w-10, h / 2);
    ctx.lineTo(w - 40, h / 2 - 10);
    ctx.moveTo(w-10, h / 2);
    ctx.lineTo(w - 40, h / 2 + 10);
    ctx.moveTo(w-10, h / 2);
    ctx.lineTo(0, h / 2);
    ctx.stroke();
    ctx.closePath();

    // hatches
    ctx.beginPath();
    let hatchGapHor = ((w-100)/20)*factor;
    let c = w/2
    let cnt = 0;
    while (c < w){
        ctx.moveTo(c, h / 2 - hatchWidth);
        ctx.lineTo(c, h / 2 + hatchWidth);
        c += hatchGapHor;
        cnt++;
        if (cnt === 11) break;
    }
    c = w/2 - hatchGapHor;
    cnt = 0;
    while (c > 0){
        ctx.moveTo(c, h / 2 - hatchWidth);
        ctx.lineTo(c, h / 2 + hatchWidth);
        c -= hatchGapHor;
        cnt++;
        if (cnt === 10) break;
    }
    c = h/2
    let hatchGapVer = ((h-100)/20)*factor;
    cnt = 0;
    while (c < h){
        ctx.moveTo(w / 2 - hatchWidth, c);
        ctx.lineTo(w / 2 + hatchWidth, c);
        c += hatchGapVer;
        cnt++;
        if (cnt === 11) break;
    }
    c = h/2 - hatchGapVer;
    cnt = 0;
    while (c > 0){
        ctx.moveTo(w / 2 - hatchWidth, c);
        ctx.lineTo(w / 2 + hatchWidth, c);
        c -= hatchGapVer;
        cnt++;
        if (cnt === 10) break;
    }
    ctx.stroke();
    ctx.closePath();


    // print labels
    const axisFontSize = baseHatchGap/5;
    ctx.fillStyle = 'black';

    ctx.font = ` ${axisFontSize * 1.4}px Roboto`;
    ctx.fillText('y', w / 2 - hatchWidth * 2.8, 40)
    ctx.fillText('x', w - 40, h / 2 - hatchWidth * 2.4)
    ctx.font = ` ${axisFontSize}px Roboto`;
    let label = 0.5;
    while (label <= 5){
        let l = label.toString();
        if (l.length === 1) l = " " + l;
        ctx.fillText(l, w / 2 + hatchGapHor*2*label - 15 , h / 2 + hatchWidth * 3.5);
        label += 0.5;
    }
    label = -0.5;
    while (label >= -5){
        let l = label.toString();
        if (l.length === 2) l = " " + l;
        ctx.fillText(l, w / 2 + hatchGapHor*2*label - 15 , h / 2 + hatchWidth * 3.5);
        label -= 0.5;
    }
    label = 0.5;
    while (label <= 5){
        let l = label.toString();
        if (l.length === 1) l = " " + l;
        ctx.fillText(l, w / 2 + hatchWidth*1.5 , h / 2 + hatchGapVer*2*label+20 );
        label += 0.5;
    }
    label = -0.5;
    while (label >= -5){
        let l = label.toString();
        if (l.length === 2) l = " " + l;
        ctx.fillText(l, w / 2 + hatchWidth*1.5, h / 2 + hatchGapVer*2*label +20);
        label -= 0.5;
    }
    if (rad !== 0){
        ctx.fillStyle = 'rgba(80,92,236,0.33)';
        ctx.beginPath();
        ctx.moveTo(w/2, h/2);
        ctx.lineTo(w/2 + hatchGapHor*rad*2, h/2);
        ctx.lineTo(w/2, h/2 - hatchGapVer*rad*2);
        ctx.lineTo(w/2, h/2 - hatchGapVer*rad);
        ctx.lineTo(w/2 - hatchGapHor*rad*2,h/2 - hatchGapVer*rad);
        ctx.lineTo(w/2 - hatchGapHor*rad*2,h/2);
        ctx.ellipse(w/2, h/2, hatchGapHor*rad*2, hatchGapVer*rad*2, 0, Math.PI, Math.PI / 2, true);
        ctx.lineTo(w/2,h/2);
        ctx.fill();
        ctx.strokeStyle = '#0115fd';
        ctx.stroke();
        ctx.closePath();
    }

}

// draw graph with standard label

function printDotOnGraph(xCenter, yCenter, isHit) {

    ctx.fillStyle = isHit ? 'green' : 'red'
    let x = w / 2 + xCenter * hatchGap * (2 / rValue) - 3, y = h / 2 - yCenter * hatchGap * (2 / rValue) - 3;
    ctx.fillRect(x, y, hatchGap/10, hatchGap/10);
}
/*
window.addEventListener('resize', (e)=>{
        w=canvas.clientWidth;
        h=canvas.clientHeight;
});*/
function getMousePosition(e) {
    var rect = canvas.getBoundingClientRect();

    var mouseX = e.offsetX * canvas.width / canvas.clientWidth | 0;
    var mouseY = e.offsetY * canvas.height / canvas.clientHeight | 0;
    return {x: mouseX, y: mouseY};
}
