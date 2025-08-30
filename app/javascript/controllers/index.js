// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

document.addEventListener("DOMContentLoaded", () => {
  const input = document.getElementById("upload-image");
  const fileName = document.getElementById("file-name");

  if (input) {
    input.addEventListener("change", () => {
      fileName.textContent = input.files.length > 0 ? input.files[0].name : "No file selected";
    });
  }
});
