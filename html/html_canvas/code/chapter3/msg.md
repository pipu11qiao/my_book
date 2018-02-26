###### Learning the Basics of Canvas

context.fillRect(x,y,width,height); // 绘制填充矩形
context.strokeRect(x,y,width,height); // 绘制描边矩形

// 绘制线
context.beginPath(); // Start the path
context.moveTo(40, 40); // Set the path origin
context.lineTo(340, 40); // Set the path destination
context.closePath(); // Close the path
context.stroke(); // Outline the path


// 绘制圆

context.beginPath(); // Start the path
context.arc(230, 90, 50, 0, Math.PI*2, false); // Draw a circle
context.closePath(); // Close the path
context.fill(); // Fill the path

context.arc(x,y,radius,startAngle,endAngle,anticlockwise);

// 修改颜色

context.fillStyle

context.strokeStyle

// 修改线宽

context.lineWidth = 5;

// draw text

// erasing the canvas
context.clearRect(0,0,500,500);