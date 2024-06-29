/*
    1. count:回傳一物件，該物件分別顯示每個英文字母的總數。
*/
function count(input) {
    //
    let letterCount = {};

    for (let i = 0 ; i < input.length ;i++){
        if (letterCount[input[i]]){
            letterCount[input[i]]++;
        }else{
            letterCount[input[i]] = 1;
        }
    }
    return sortLitterCount(letterCount);
}

/* 
    2. groupByKey: 回傳一個物件，該物件分別顯示每個英文字母的總數。
*/
function groupByKey(input) {
    let letterCount = {};
    for (let char of input){
        if(letterCount[char.key]){
            letterCount[char.key] += char.value;
        }else{
            letterCount[char.key] = char.value;
        }
    }
    return sortLitterCount(letterCount);
}

/*
  sortcharCount:將尚未排序過的物件，依照英文字母順序重新排序。 
  {a:3, b:1, c:2, x:1}
*/ 
function sortLitterCount(input){
    let noSortLetter = [];
    for(let litter in input){
        noSortLetter.push(litter);
    }
    //透過charCodeAt()將字母轉為ASCII碼(a-z => 97-122)，依序放入sortLetter。
    let sortLetter = noSortLetter.map(litter => litter.charCodeAt());
    
    //將sortLetter依照內部元素大小排序。
    for (let i = 0 ; i < sortLetter.length - 1 ; i++){
        for (let j = i+1 ; j < sortLetter.length ; j++){
            if(sortLetter[i] > sortLetter[j]){
                 let temporaryStorage = sortLetter[i];
                 sortLetter[i] = sortLetter[j];
                 sortLetter[j] = temporaryStorage;
            }
        }
    }

    //透過String.fromCharCode()將排序好的順序，由ASCII碼變回a-z，依序放入finalSortLetter中。
    let finalSortLetter = sortLetter.map(litter => String.fromCharCode(litter));

    let finalLetterCount ={};
    for(let i = 0 ; i < finalSortLetter.length ;i++){
        finalLetterCount[finalSortLetter[i]]= input[finalSortLetter[i]];
    }
    return finalLetterCount;
}




let input1 = ["a", "b", "c", "a", "c", "a", "x"];
console.log(count(input1));
// should print {a:3, b:1, c:2, x:1}

let input2 = [
{ key: "a", value: 3 },
{ key: "b", value: 1 },
{ key: "c", value: 2 },
{ key: "a", value: 3 },
{ key: "c", value: 5 },
];
console.log(groupByKey(input2));
// should print {a:6, b:1, c:7}
