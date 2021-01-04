const menuButton = () => {

const burger = document.querySelector('.burger')

const lineTop = document.getElementById("line-top");
const lineMiddle = document.getElementById("line-middle");
const lineBottom = document.getElementById("line-bottom");
// Get all buttons with class="btn" inside the container

burger.addEventListener("click", event => {
    if (lineTop.classList.contains('line-top-active')) {
    lineTop.classList.remove('line-top-active');
    } else lineTop.classList.add('line-top-active');
});

burger.addEventListener("click", event => {
    if (lineMiddle.classList.contains('line-middle-active')) {
    lineMiddle.classList.remove('line-middle-active');
    } else lineMiddle.classList.add('line-middle-active');
});

burger.addEventListener("click", event => {
    if (lineBottom.classList.contains('line-bottom-active')) {
    lineBottom.classList.remove('line-bottom-active');
    } else lineBottom.classList.add('line-bottom-active');
});
}

export { menuButton }