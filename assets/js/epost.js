(() => {
  if (document.getElementById("guess-game")) return;

  document.body.insertAdjacentHTML(
    "beforeend",
    `
    <dialog id="guess-game" aria-label="Vis e-postadresse">
      <button type="button" class="btn btn-green" id="close-button">Lukk</button>
      <p>For å beskytte oss mot spam må du først besvare et enkelt spørsmål før du får se e-postadressen.</p>
      <form>
        <label for="email-year">Hvilket år er vi i?</label>
        <input id="email-year" type="number" min="1900" max="2050" name="mysteriousinput" required />
        <button type="submit" class="btn btn-purple">Svar</button>
      </form>
    </dialog>
  `,
  );

  const dialog = document.getElementById("guess-game");
  const form = dialog.querySelector("form");

  form.addEventListener("submit", (event) => {
    event.preventDefault();
    const input = new FormData(form).get("mysteriousinput");

    if (String(new Date().getFullYear()) === input) {
      for (const button of document.querySelectorAll("button[data-epost]")) {
        const [pre, post, tld] = button.dataset.epost.split(",");
        const email = `${pre}@${post}.${tld}`;
        const link = document.createElement("a");
        link.href = `mailto:${email}`;
        link.textContent = email;
        button.replaceWith(link);
      }
      dialog.close();
    } else {
      alert("Njet. Prøv igjen");
    }
  });

  document.addEventListener("click", (event) => {
    if (event.target.closest("button[data-epost]") && !dialog.open) {
      dialog.showModal();
    }
  });

  dialog.querySelector("#close-button").addEventListener("click", () => {
    dialog.close();
  });
})();
