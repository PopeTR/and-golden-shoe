import React from "react";
// import videos from '../../app/assets/videos/concert.mp4'
// import MyVideo from "images/shoes.mp4";
// import MyVideo from "images/Golden-shoe-logo.png"

const Video = (props) => {
  return(
    <div className="homepage-container">
      <video 
        className="homeVideo"
        loop 
        muted 
        playsInline 
        autoPlay 
        src={props.video}
        type='video/mp4' 
        preload='auto'
      />
    </div>
  );
}

export default Video;
