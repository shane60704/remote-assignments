import React, { useState } from 'react';
import './App.css';

function App() {

  const [words, changeWords] = useState("Welcome Message");
  const [showBox, showMore] = useState(false);

  const ChangeWordskClick = () => {
    changeWords("Have a Good Time!");
  };

  const showBoxesClick = () => {
    showMore(true);
  };

  return (
    <div className="App">

      <header>
        <div className = "header-container">
            <div className = "header-title">Website Title / Logo</div>
            <nav>
                <ul>
                    <li>Item&nbsp;1</li>
                    <li>Item&nbsp;2</li>
                    <li>Item&nbsp;3</li>
                    <li>Item&nbsp;4</li>
                </ul>
            </nav>
        </div>
      </header>

      <main>
        <div className = "banner" onClick={ChangeWordskClick}>
              {words}
        </div>
        <section>
            <div className="section-container1">
                <p>Section Title</p>
                <div className="section-item1">
                    <div className="content-box">Content Box 1</div>
                    <div className="content-box">Content Box 2</div> 
                    <div className="content-box">Content Box 3</div> 
                    <div className="content-box">Content Box 4</div> 
                </div>
            </div>
        </section>

        <div class = "CtA-container">
            <button type="button"  onClick={showBoxesClick}>Call to Action</button>
        </div>

        {showBox && (
              <div className="section-container1">
                <div className="section-item1">
                    <div className="content-box">Content Box 5</div>
                    <div className="content-box">Content Box 6</div> 
                    <div className="content-box">Content Box 7</div> 
                    <div className="content-box">Content Box 8</div> 
                </div>
            </div>
         )}
      </main>
    </div>
  );
}

export default App;

