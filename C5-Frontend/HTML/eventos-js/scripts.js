document.addEventListener("DOMContentLoaded", (event) => {
  // Evento para cambiar el texto del párrafo
  const changeTextButton = document.getElementById("changeTextButton");
  const textParagraph = document.getElementById("textParagraph");

  changeTextButton.addEventListener("click", () => {
    textParagraph.textContent = "El texto ha sido cambiado!";
  });

  // Evento para mostrar texto en vivo
  const inputText = document.getElementById("inputText");
  const liveText = document.getElementById("liveText");

  inputText.addEventListener("input", () => {
    liveText.textContent = inputText.value;
  });

  // Evento para cambiar el color del cuadro cuando se pasa el mouse sobre él
  const colorBox = document.getElementById("colorBox");

  colorBox.addEventListener("mouseenter", () => {
    colorBox.style.backgroundColor = "#add8e6"; // Color azul claro
  });

  colorBox.addEventListener("mouseleave", () => {
    colorBox.style.backgroundColor = "#ddd"; // Color original
  });
});
