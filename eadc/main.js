
function renderContent(data) {
  const container = document.getElementById('content-container');
  let html = '';

  data.sections.forEach(section => {
    html += `<section class="container">
      <h2>${section.title}</h2>
      <div class="split">
        <div class="split-text">
          <h3>${section.heading}</h3>
          <p>${section.body}</p>
        </div>
        <div class="split-img">
          <img src="${section.image}" alt="${section.alt}" loading="lazy">
        </div>
      </div>
    </section>`;
  });

  container.innerHTML = html;
}