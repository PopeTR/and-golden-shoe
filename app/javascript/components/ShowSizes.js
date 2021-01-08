const showSizes = () => {
    const sizesLocation = document.querySelector('.show-info-sizes')
    console.log(sizesLocation)
    const colours = document.querySelector('.colour-square')

    colours.addEventListener("click", event => {
        sizesLocation.insertAdjacentHTML('beforeend', '<% @shoe_sizes.each do |size| %><p><%= size.content %></p><% end %> )})');
    });
}

export { showSizes };