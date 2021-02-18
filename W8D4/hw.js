


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
console.log('\n\n\n');




let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [e,ellie, charlie, kate, micah];



function paradeHelper(elephant){
    console.log(`${elephant.name} is trotting by!`);
}
herd.forEach(paradeHelper);





function dinerBreakfast(food){
    let foodList = ['cheesy scrambled eggs'];

    printFoods = function(food){
        foodList.push(food);
        let sentence = foodList.join(' and ') + ' please';
        console.log(sentence);
    }
    return printFoods;
}

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");

console.log(bfastOrder.foodList);

