import React from 'react';

const ShoeCard = (props) => {
   

    return(
        <div className="shoecard-container">
            <div className="shoecard-image-container">
                <img src={props.photo} alt="shoecard-image" className="shoecard-image"/>
            </div>
            <div className="shoecard-description">
                <p>{props.shoe}</p>
            </div>
        </div>
    );
}

export default ShoeCard;