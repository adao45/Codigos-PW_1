
const parameter = new URLSearchParams(window.location.search);
const dif = parameter.get('dif');
// Variáveis do HTML
let number = 0
const difField = document.getElementById('dif');
const result = document.getElementById('result');
var inputNumber = document.getElementById('inputNumber');
const triesField = document.getElementById('tries');
const tipsField = document.getElementById('tips');
const sim = document.getElementById("btnDicasSim")
let dica= document.getElementById("dica")
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

async function exit() {
    await sleep(3000);
    window.location.replace('./home.html');
}

function sleep (time) {
    return new Promise((resolve) => setTimeout(resolve, time));
}


function gameplay() {
    number = parseInt(inputNumber.value);
    inputNumber.value = null;
   
    if ( number == sortedNumber ) {
        result.textContent = 'Uau, eu não estava esperando por essa!! HAHAHA você realmente acertou!!!!!!! Meus parabéns Vencedor.';

        return exit();
    }
    else {
        if ( tries > 0 ) {
            tries = tries -1;

            triesField.textContent = tries;

            result.textContent = 'Buuuuuuh não foi dessa vez !!! Você tem ' + tries + ' tentativas restantes';
        }
        if(tries <= 0) {
            result.textContent = "GAME OVER";

            return exit();
        }

        
         // Dar uma dica sempre que o jogador errar (limitado ao número de dicas restantes)
        // Dar uma dica ao pressionar um botão da interface
        // Apertar um botão e solicitar um número para dar a dica
    }

    
}

function dicas (){
    if(number > sortedNumber){
        dica.textContent= 'O número sorteado é menor que seu aposta'
    }
    else{
        dica.textContent= 'O número sorteado é maior que seu aposta'
    }
}