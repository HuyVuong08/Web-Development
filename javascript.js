function findMax(arr) {
    let pos = 0;
    for (let i = 0; i < arr.length; i++) {
        if (arr[pos] < arr[i]) {
            pos = i;
        }
    }
    return pos;
}

function findMin(arr) {
    let pos = 0;
    for (let i = 0; i < arr.length; i++) {
        if (arr[pos] > arr[i]) {
            pos = i;
        }
    }
    return pos;
}

function sortDesc(array){
    for (let i = 0; i < array.length; i++) {
        for (let j = i + 1; j < array.length; j++){
            if (array[i]< array[j]){
                temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }   
    }
    return array;
}

function sortAsc(array){
    for (let i = 0; i < array.length; i++) {
        for (let j = i + 1; j < array.length; j++){
            if (array[i]> array[j]){
                temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }   
    }
    return array;
}

array1 = [1,2,11,3,4,-55,-99,-1,-22];
console.log(array1[findMax(array1)]);
console.log(sortDesc(array1));
console.log(sortAsc(array1));
