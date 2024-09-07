let title = document.getElementById('tilulo');
let link = document.querySelector('a');
let list = document.getElementById('lista-ordenada');
let orderedList = document.querySelector('ol');

title.innerText = 'Proz';
link.innerText = 'Saiba mais';

list.innerHTML = `
  <li>HTML</li>
  <li>CSS</li>
  <li>JavaScript</li>
`
orderedList.innerHTML = `
  <li><a href="https://reprograma.com.br/">Reprograma</a></li>
  <li><a href="https://www.programaria.org/">Programaria</a></li>
  <li><a href="rocketseat.com.br">Rocketseat</a></li>
`
