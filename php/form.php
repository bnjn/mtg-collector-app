<?php
    function displayForm() {
        echo '<form name=filter action=""  method="post">
                <div>
                      <label for="cmc">CMC: </label>
                      <input name="cmc" type="number">
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
                      <button type="submit">Filter</button>
                      <a href="php/addcard.php">Add Card</a>
               </form>';
    }