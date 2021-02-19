const readline = require('readline');


// const fCallback = function() {alert('Hammertime!')};
// // setTimeout(fCallback,5000);



// function hammerTime(time) {
//     setTimeout(function(){alert(`${time} is hammertime!`);} , time);
// }
// // hammerTime(3000);



const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
 
reader.question('Would you like some tea?', (res)=>{
    console.log(`You said ${res}`);
    reader.question('Would you like some biscuits?', (res2)=>{
        console.log(`You said ${res2}`);
        console.log(`So you ${res} want tea and you ${res2} want coffee?`);
    });
});







