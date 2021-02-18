


function titleize(array,printCallback){

    array = array.map(x => `Mx. ${x} Jingleheimer Schmidt`);
    array.forEach(element => {
        printCallback(element); 
    });

}

titleize(['a','b','c'], console.log);



function  Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks= tricks;
}
Elephant.prototype.trumpet = function(){console.log(`${this.name} the elephant goes phRRRRRRR!`);}
Elephant.prototype.grow  = function(){this.height += 12;}
Elephant.prototype.addTrick = function(trick){this.tricks.push(trick);}
Elephant.prototype.play = function() {return  this.tricks[Math.floor(Math.random() * this.tricks.length )];}


e = new Elephant('jerry', 100, ['eating cake']);

// console.log(e.trumpet());
e.trumpet();
e.grow();
console.log(e.height);
e.addTrick('Fights fire');
console.log(e.tricks);
console.log(e.play());