import React from 'react';
import ShoeCard from './ShoeCard';

class MaleShoes extends React.Component {
    
    render() {
        
        const { male_products, photos } = this.props
        console.log(photos)
        return(
            <div className="shoe-container">
                <div className="filter-container">

                </div>
                <div className="shoecards-container">
                    {male_products.map((shoe) => (
                        <ShoeCard key={shoe.id} shoe={shoe.name} photo={shoe.images}/>
                    ))}
                </div>
            </div>
        );
    }
}

export default MaleShoes;