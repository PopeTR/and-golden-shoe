const filterButton = () => {

const filter = document.querySelector('.filter-icon');
const aside = document.querySelector("aside");
// console.log(aside)
filter.addEventListener("click", event => {
    if (aside.classList.contains('close')) {
    aside.classList.remove('close');
    } else aside.classList.add('close');
});
}

export { filterButton }