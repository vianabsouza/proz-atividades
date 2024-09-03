numerosDaSorte = [37, 14, 26, 5, 94, 87];

for(let i = 0; i < numerosDaSorte.length; i++) {
  let numero = numerosDaSorte[i];
  let indice = i + 1;

  if(numero % 2 == 0 && numero < 50){
    console.log(`${indice}) O número ${numero} é par e menor que 50.`);
  }
  else if(numero < 50) {
    console.log(`${indice}) O número ${numero} é menor que 50.`);
  }
  else {
    console.log(`${indice}) O número ${numero} é maior que 50.`)
  }
}