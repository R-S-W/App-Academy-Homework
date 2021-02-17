
//this is the ES6 way
const madLib = (verb, adj,  noun) => {
    // console.log('Run west Willy')
    console.log(`We shall ${verb} the ${adj} ${noun}`);
};
madLib('run', 'happy' ,'dog')



const isSubstring = (searchString, subString) => {
    return searchString.includes(subString);
}
console.log(isSubstring("time to program", 'time'))



function fizzbuzz(array) {
    array2= [];
    for (let i = 0; i< array.length; i++){
        if ((array[i] %3 ===0) !== (array[i]%5 ==0) ){
            array2.push(array[i]);
        }
    }
    return array2;
}
console.log(fizzbuzz([1,2,3,4,30, 35, 27,4,5,5,5,6]))




function isPrime(num){
    if (num< 2) {
        return false;
    }
    for (let i = 2; i < num; i++){
        if (num%i == 0){
            return false;
        }
    }
    return true;
}
console.log(isPrime(15));
console.log(isPrime(17));


function sumOfPrimes(n){
    sum = 0;
    a = 1;
    while (n >0){
        if (isPrime(a)){
            sum+=a;
            n--;
        }
        a++;
    }
    return sum;
}

console.log(sumOfPrimes(0));
console.log(sumOfPrimes(1));
console.log(sumOfPrimes(4));