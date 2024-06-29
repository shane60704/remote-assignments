function binarySearchPosition(numbers, target) {
    //確保numbers陣列中的元素皆依照大小進行排序
    for (let i = 0; i < numbers.length ; i++){
        for(let j = i+1; j < numbers.length;j++){
            if(numbers[i] > numbers[j]){
                let temporaryStorage = numbers[i];
                numbers[i] = numbers[j];
                numbers[j] = temporaryStorage;
            }
        }
    }

    let leftIndex = 0;
    let rightIndex = numbers.length - 1;
   
    while (leftIndex <= rightIndex){
        let middleIndex = Math.floor((leftIndex + rightIndex) / 2);
        if (target > numbers[middleIndex]){
            leftIndex = middleIndex + 1;
        }else if(target < numbers[middleIndex]){
            rightIndex = middleIndex - 1;
        }else{
            return middleIndex;
        }
    }
    //當while迴圈結束，numbers[middleIndex]依舊不等於target，則返回-1，表示陣列中並不包含1。
    return -1;
}

console.log(binarySearchPosition([1, 2, 5, 6, 7], 1)); // should print 0
console.log(binarySearchPosition([1, 2, 5, 6, 7], 6)); // should print 3

