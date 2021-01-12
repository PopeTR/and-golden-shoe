const checkBoxes = document.querySelectorAll(".radio-buttons");
// Function to identify what colour was clicked 
const replaceSizes = (innerHTML) => {
    const sizes = document.getElementById('sizes');
    sizes.innerHTML = innerHTML;
}

// Listens for change and then takes the colour id.
for (const check of checkBoxes) {
    check.addEventListener( 'change', function() {
        colour(check.id)
    })
}

// Ajax request to find shoe sizes that exist
const colour = (id) => {
    $.ajax({
        url : "/api/v1/products/<%=@shoe.id%>", 
        method : "post",
        data : { colour: id },
        dataType : "json",
        success: function(response){
            const form = (response) => {
                let array = []
                console.log(response)
                if (response.length === 0) {
                    return ("<p>No Sizes Available in this shoe</p>")
                } else { response.map((size) => {
                        array.push(`
                            <form class="simple_form grid" id="new_size" novalidate="novalidate" action="" accept-charset="UTF-8" method="post">
                                <div class="radio size-info">
                                    <fieldset class="form-group radio_buttons size_selection">
                                        <input type="hidden" name="answer" data-remote="true" value="">
                                        <div class="square size-square">
                                            <input class="form-check-input size-form-checks radio_buttons optional" type="radio" value="" name="Answer" id="size_selection">
                                                <label class="btn collection_radio_buttons" for="size_selection">
                                            ${size.content}
                                        </label>
                                    </div>
                                </fieldset>
                            </div>`)
                        }) 
                            return (array.join(''))
                            
                             }
            }
                document.getElementById('sizes').innerHTML = form(response);
                showBasket();
                
        },
        error: function(error){
        console.log(error);
        }
    });
}

// Function to show basket
const showBasket = () => {
    const sizeSelection = document.querySelectorAll('.size-square')
    const basket = document.getElementById('basket-btn');
    console.log(sizeSelection)
    sizeSelection.forEach(item => {
        item.addEventListener('click', event => {
        basket.classList.add('basket');  
        })
       
    })
    console.log(basket)
}

export { replaceSizes }