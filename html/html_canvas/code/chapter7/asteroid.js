$(document).ready(function () {
    var canvas = $("#myCanvas");
    var context = canvas.get(0).getContext("2d");
    var canvasWidth = canvas.width();
    var canvasHeight = canvas.height();

    $(window).resize(resizeCanvas);

    function resizeCanvas() {
        canvas.attr("width", $(window).get(0).innerWidth);
        canvas.attr("height", $(window).get(0).innerHeight);
        canvasWidth = canvas.width();
        canvasHeight = canvas.height();
    }

    resizeCanvas();

    var playAnimation = true;
    var startButton = $("#startAnimation");
    var stopButton = $("#stopAnimation");
    startButton.hide();
    startButton.click(function () {
        $(this).hide();
        stopButton.show();
        playAnimation = true;
        animate();
    });
    stopButton.click(function () {
        $(this).hide();
        startButton.show();
        playAnimation = false;
    });
    var Asteroid = function (x, y, radius,vX,vY,aX,aY) {
        this.x = x;
        this.y = y;
        this.radius = radius;

        this.vX = vX; // velocity x
        this.vY = vY; // velocity y
        this.aX = aX; // acceleration x
        this.aY = aY; // acceleration y
    };
    var asteroids = new Array();
    for (var i = 0; i < 10; i++) {
        var x = 20 + (Math.random() * (canvasWidth - 40));
        var y = 20 + (Math.random() * (canvasHeight - 40));
        var radius = 5 + Math.random() * 10;
        var vX = Math.random() * 4-2;
        var vY = Math.random()* 4 -2;
        var aX = Math.random() * 0.2 - 0.1;
        var aY = Math.random() * 0.2 - 0.1;
        aX = 0;
        aY = 0;
        asteroids.push(new Asteroid(x, y, radius,vX,vY,aX,aY));
    }

    function animate() {
        context.clearRect(0, 0, canvasWidth, canvasHeight);
        context.fillStyle = "rgb(255, 255, 255)";
        var asteroidsLength = asteroids.length;
        for (var i = 0; i < asteroidsLength; i++) {
            var tmpAsteroid = asteroids[i];
            for(var j = i + 1; j < asteroidsLength; j ++) {
                var tmbAsteroidB = asteroids[j];

                var dX = tmbAsteroidB.x - tmpAsteroid.x;
                var dY = tmbAsteroidB.y - tmpAsteroid.y;
                var distance = Math.sqrt((dX * dX) + (dY * dY));
                if(distance < tmpAsteroid.radius + tmbAsteroidB.radius) {
                    // has collisped
                }

            }
            if(Math.abs(tmpAsteroid.vX) < 10) {
                tmpAsteroid.vX += tmpAsteroid.aX;
            }
            if(Math.abs(tmpAsteroid.vY) < 10) {
                tmpAsteroid.vY += tmpAsteroid.aY;
            }
            // if(Math.abs(tmpAsteroid.vX) > 0.1) {
            //     tmpAsteroid.vX *= 0.9;
            // } else {
            //     tmpAsteroid.vX = 0;
            // }
            // if(Math.abs(tmpAsteroid.vY) > 0.1) {
            //     tmpAsteroid.vY *= 0.9;
            // } else {
            //     tmpAsteroid.vY = 0;
            // }
            tmpAsteroid.x += tmpAsteroid.vX;
            tmpAsteroid.y += tmpAsteroid.vY;

            if(tmpAsteroid.x - tmpAsteroid.radius < 0) {
                tmpAsteroid.x = tmpAsteroid.radius;
                tmpAsteroid.vX *= -1;
                tmpAsteroid.aX *= -1;
            } else if ( tmpAsteroid.x + tmpAsteroid.radius > canvasWidth) {
                tmpAsteroid.x = canvasWidth - tmpAsteroid.radius;
                tmpAsteroid.vX *= -1;
                tmpAsteroid.aX *= -1;
            }

            if(tmpAsteroid.y - tmpAsteroid.radius < 0) {
                tmpAsteroid.y = tmpAsteroid.radius;
                tmpAsteroid.vY *= -1;
                tmpAsteroid.aY *= -1;
            } else if (tmpAsteroid.y + tmpAsteroid.radius > canvasHeight){
                tmpAsteroid.y = canvasHeight - tmpAsteroid.radius;
                tmpAsteroid.vY *= -1;
                tmpAsteroid.aY *= -1;
            }



            context.beginPath();
            context.arc(tmpAsteroid.x, tmpAsteroid.y, tmpAsteroid.radius, 0, Math.PI * 2, false);
            context.closePath();
            context.fill();
        }
        if (playAnimation) {
            setTimeout(animate, 33);
        }
    }
    animate();
});