const filterButton = () => {
    const shoesContainer = document.querySelector(".shoes-container")
    if (shoesContainer) {
    const filter = document.querySelector('.filter-icon');
    const aside = document.querySelector("aside");

    filter.addEventListener("click", event => {
        if (aside.classList.contains('close')) {
        aside.classList.remove('close');
        } else aside.classList.add('close');
    });
    }
}

export { filterButton }