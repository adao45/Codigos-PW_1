
const parameter = new URLSearchParams(window.location.search);
const dif = parameter.get('dif');
// Variáveis do HTML
const difField = document.getElementById('dif');
const result = document.getElementById('result');
const inputNumber = document.getElementById('inputNumber');
const triesField = document.getElementById('tries');
const tipsField = document.getElementById('tips');
// Variáveis do Jogo
let sortedNumber = 0;
let tries = 4;
let tips = 2;

triesField.textContent = tries;
tipsField.textContent = tips;


switch(dif){
    case 'easy':
        difField.textContent = 'Dificuldade escolhida: Fácil';
        sortedNumber = Math.floor(Math.random() * 30) + 1;
        break;
    case 'med':
        difField.textContent = 'Dificuldade escolhida: Médio';
        sortedNumber = Math.floor(Math.random() * 60) + 1;
        break;
    case 'hard':
        difField.textContent = 'Dificuldade escolhida: Difícil';
        sortedNumber = Math.floor(Math.random() * 90) + 1;
        break;
    default:
        difField.textContent = 'Não encontramos a dificuldade'
        break;
}

console.log(sortedNumber);

function exit() {
    
    window.location.replace('./home.html');
}


function gameplay() {
    let number = parseInt(inputNumber.value);

    if (number === sortedNumber) {
        result.textContent = 'Parabéns! Você acertou! Retornando para a página principal...'
        exit()
        return ;
    }
    else {
        result.textContent = 'Você errou !!';
        tries = tries -1;

        triesField.textContent = tries;
    }
}

