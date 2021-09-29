<?php
    function displayFilterForm() {
        echo '<form name=filter action=""  method="post">
                <div>
                      <label for="cmc">CMC: </label>
                      <input class="numinput" name="cmc" type="number">
                      <label for="showall">Show All:</label>
                      <input type="hidden" name="showall" value="0">
                      <input type="checkbox" name="showall" value="1">
                </div>
                <div>
                      <label for="sort">Sort by: </label>
                      <select name="sort">
                        <option value="prices.usd">Price</option>
                        <option value="id">Added</option>
                        <option value="cmc">CMC</option>
                        <option value="type_line">Type</option>
                      </select>
                      <label for="ascend">Ascending: </label>
                      <input type="hidden" name="ascend" value="DESC">
                      <input type="checkbox" name="ascend" value="ASC">
                </div>
                      <button class="button" type="submit">Filter</button>';
    }

    function displayAddCardForm() {
        echo '<form name=filter action="dbadd.php"  method="post">
                    <div>
                          <label for="name">Name: </label>  
                          <input type="text" name="name">
                          <br>
                          <label for="imgurl">Image: </label>  
                          <input type="url" name="imgurl">
                    </div>
                    <br>
                    <div>
                          Colour:
                          <br>
                          <label for="cardcolor[]">White</label>
                          <input type="checkbox" name="cardcolor[]" value="W">
                          <label for="cardcolor[]">Blue</label>
                          <input type="checkbox" name="cardcolor[]" value="U">
                          <label for="cardcolor[]">Red</label>
                          <input type="checkbox" name="cardcolor[]" value="R">
                          <label for="cardcolor[]">Black</label>
                          <input type="checkbox" name="cardcolor[]" value="B">
                          <label for="cardcolor[]">Green</label>
                          <input type="checkbox" name="cardcolor[]" value="G">             
                    </div>
                    <br>
                    <div class="mana-cost">
                          Mana Cost:
                          <br>
                          <label for="manacost[]">Colourless</label>
                          <input class="numinput" name="manacost['.''.']">
                          <label for="manacost[]">White</label>
                          <input type="number" name="manacost['.'W'.']">
                          <label for="manacost[]">Blue</label>
                          <input type="number" name="manacost['.'U'.']">
                          <label for="manacost[]">Red</label>
                          <input type="number" name="manacost['.'R'.']">
                          <label for="manacost[]">Black</label>
                          <input type="number" name="manacost['.'B'.']">
                          <label for="manacost[]">Green</label>
                          <input type="number" name="manacost['.'G'.']">
                    </div>
                    <div>      
                          <br>
                          =    
                          <br>
                          <label for="cmc">CMC: </label>
                          <input class="numinput" name="cmc" type="number">        
                    </div>
                    <br>
                    <div>
                          <label for="type">Type: </label>
                          <select name="type">
                            <option value="Artifact">Artifact</option>
                            <option value="Creature">Creature</option>
                            <option value="Enchantment">Enchantment</option>
                            <option value="Instant">Instant</option>
                            <option value="Land">Land</option>
                            <option value="Planeswalker">Planeswalker</option>
                            <option value="Sorcery">Sorcery</option>
                          </select>
                          <label for="rarity">Rarity: </label>
                          <select name="rarity">
                            <option value="common">Common</option>
                            <option value="uncommon">Uncommon</option>
                            <option value="rare">Rare</option>
                            <option value="mythic">Mythic</option>
                          </select>
                    </div>    
                    <br>  
                    <div>
                          <label for="setname">Set name: </label>  
                          <input type="text" name="setname">
                          <br>
                          <label for="artistname">Artist name: </label>
                          <input type="text" name="artistname">      
                          <br>
                          <label for="price">Price (USD): </label>
                          <span>$</span><input name="price" type="number">
                          <br>                 
                    </div>  
                    <br>                         
                          <button class="button" type="submit">Add Card</button>
                          <button class="button" type="reset">Reset</button>
                   </form>';
    }