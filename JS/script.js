// Задание 1

var sum = 0;
for(var i=10; i<=20; i++) {
    console.log(i*i); // 1.1
    sum += i;
}
console.log("Sum is ", sum); // 1.2

// Задание 2

function buttonClick() {
    var x1 = parseInt(document.getElementById('x1').value);
    var x2 = parseInt(document.getElementById('x2').value);

    if ((document.getElementById("x1").value == '') || (document.getElementById("x2").value == '') ) {
        alert("Поля х1 и х2 должны быть заполнены");
    } else if (Number.isNaN(x1) || Number.isNaN(x2)) {
        alert("В поля х1 и х2 должны быть введены числовые значения.");
    } else {
        var resultDiv = document.getElementById('result');
        resultDiv.innerHTML = "";

        var rad = document.getElementsByName('rad');
        var sum = 0;
        var mult = 1;
        var simple = "";
        if (document.getElementById("x1").value > document.getElementById("x2").value) {
            alert("х1 должно быть меньше или равно х2");
        } else {
            switch(true) {
                case rad[0].checked:
                    for (var i = x1; i <= x2; i++)
                        sum += i;
                    break;
                case rad[1].checked:
                    for (var i = x1; i <= x2; i++)
                        mult *= i;
                    break;
                case rad[2].checked:
                    cycle: for (i = x1; i <= x2; i++){
                        for (j = 2; j < i; j++){
                            if (i % j == 0) {
                                continue cycle;
                            }                                
                        }
                        simple += " " + i;
                    }                        
            }
        }        
        switch(true) {
            case rad[0].checked:
                resultDiv.append("Sum = " + sum);
                break;
            case rad[1].checked:
                resultDiv.append("Mult = " + mult);
                break;
            case rad[2].checked:
                resultDiv.append(" " + simple);
                break;
        }
    }
}

function buttonDelete() {
    document.getElementById("x1").value = "";
    document.getElementById("x2").value = "";
}
