let operacoes = (num1, num2) => {
  return (
    `
      ${num1} + ${num2} = ${num1 + num2}
      ${num1} - ${num2} = ${num1 - num2}
      ${num1} * ${num2} = ${num1 * num2}
      ${num1} / ${num2} = ${num1 / num2}
    `
  )
}

console.log(operacoes(5, 5));