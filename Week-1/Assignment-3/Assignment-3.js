    function countAandB(input) {
        let countAB = 0;
        for( let i = 0 ; i < input.length ; i++){
            if (input[i] == 'a' || input[i] == 'b'){
                countAB++;
            }
        }
        return countAB;
    }
    function toNumber(input) {
        let result = [];
        let final_result = "";
            for(let i = 0 ; i < input.length ; i++){
                result[i] = input[i].charCodeAt()- 96;
            }
            for(let i = 0 ; i < result.length ; i++ ){
                if(i == 0){
                    final_result += '['+ result[i] +',';
                }else if(i == result.length-1){
                    final_result += result[i] + ']';
                }else{
                    final_result += result[i] + ',';
                }
            }
            return final_result;
        }
        
    let input1 = ['a', 'b', 'c', 'a', 'c', 'a', 'c'];
    console.log(countAandB(input1)); // should print 4 (3 ‘a’ letters and 1 ‘b’ letter)
    console.log(toNumber(input1)); // should print [1, 2, 3, 1, 3, 1,3]
    let input2 = ['e', 'd', 'c', 'd', 'e'];
    console.log(countAandB(input2)); // should print 0
    console.log(toNumber(input2)); // should print [5, 4, 3, 4, 5]
    