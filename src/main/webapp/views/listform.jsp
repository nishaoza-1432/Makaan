<%@ page  language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/listform.css">
 
</head>
<body>
  <div id="form">
                <form action="/listform"  method="post" enctype="multipart/form-data">
                <div class="img">
                <div class="container">
                    <div id="addtitle"><h2>Add Property</h2></div>
                     <div class="input-container">
                    <label>Choose images:</label>
                    
                    <input type="file" name="imageData" accept="image/jpeg, image/png, image/jpg" multiple ></div>
                    <div id="outer">
                        <div id="inner">DRAG & DROP IMAGES HERE</div>
                    </div><br>
    <script>
        const input = document.querySelector("input")
        const output = document.querySelector("output")
        let imagesArray = [];
        input.addEventListener("change", () => {
            const file = input.files
            imagesArray.push(file[0])
            displayImages()
        })
        function displayImages() {
            let images = ""
            imagesArray.forEach((image, index) => {
                images += `<div class="image">
                <img src="${URL.createObjectURL(image)}" alt="image">
                <span onclick="deleteImage(${index})">&times;</span>
              </div>`
            })
            output.innerHTML = images
        }
        function deleteImage(index) {
            imagesArray.splice(index, 1)
            displayImages()
        }

    </script>
                    <div class="input-container">
                    <label for="title">Property title:</label>
                    <input type="text" name="property_title" placeholder="Property Title" required autofocus/></div>
                     <div class="input-container">
                     <label for="description">Property description:</label>
                    <textarea name="property_description" placeholder="Property Description" required></textarea></div>
                     <div class="input-container">
                     <label for="address">Property address:</label>
                    <textarea name="property_address" placeholder="Address" required></textarea></div>
                     <div class="input-container">
                     <label for="title">Location</label>
                    <input id="loc" type="text" name="property_location" placeholder="Location" /></div>
                     <div class="input-container">
                    <label for="type">Property Type</label>
                    <select name="property_type" id="type">
                        <option value="1RK">1 RK</option>
                        <option value="1BHK">1 BHK</option>
                        <option value="2BHK">2 BHK</option>
                        <option value="3BHK">3 BHK</option>
                    </select></div>
                     <div class="input-container">
                     <label for="area">Property area/sqft:</label>
                    <input type="number" name="property_area" placeholder="Area /Sq.ft." required /></div>
                     <div class="input-container">
                      <label for="price">Price</label>
                    <input type="number" name="property_price" placeholder="Price" required /></div>
                     <div class="input-container">
                    <button id="addbtn">ADD</button></div>
                </form></div>
            </div></div>
    </main>
     </body></html>
