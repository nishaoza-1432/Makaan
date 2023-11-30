let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides((slideIndex += n));
}

function currentSlide(n) {
  showSlides((slideIndex = n));
}

function showSlides(n) {
  let i;
  let slides = document.querySelectorAll('.slider-image');
  let dots = document.querySelectorAll('.dot');
  if (n > slides.length) {
    slideIndex = 1;
  }
  if (n < 1) {
    slideIndex = slides.length;
  }
  for (i = 0; i < slides.length; i++) {
    slides[i].style.transform = 'translateX(' + -100 * (slideIndex - 1) + '%)';
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(' active', '');
  }
  dots[slideIndex - 1].className += ' active';
}

  function performSearch() {
        // Get the selected property type and localities
        var propertyType = document.getElementById("type").value;
        var localities = document.getElementById("search-input").value;

        // You can perform an AJAX request here to get filtered properties
        // For simplicity, I'll assume you have a function getFilteredProperties
        var filteredProperties = getFilteredProperties(propertyType, localities);

        // Update the property listing container with the filtered properties
        updatePropertyListings(filteredProperties);
    }

    function getFilteredProperties(propertyType, localities) {
        // Perform an AJAX request or fetch data based on the selected filters
        // For simplicity, I'm providing a static list of properties
        var allProperties = [
            { type: "type1", location: "Locality1", price: 100000 },
            { type: "type2", location: "Locality2", price: 150000 },
            { type: "type1", location: "Locality3", price: 120000 },
            // Add more properties as needed
        ];

        // Filter properties based on selected filters
        var filteredProperties = allProperties.filter(function (property) {
            return property.type === propertyType && property.location.includes(localities);
        });

        return filteredProperties;
    }

    function updatePropertyListings(properties) {
        // Update the property listing container with the filtered properties
        var propertyListContainer = document.getElementById("property-list-container");

        // Clear existing listings
        propertyListContainer.innerHTML = "";

        // Create new property listings
        properties.forEach(function (property) {
            var propertyElement = document.createElement("div");
            propertyElement.innerHTML = `
                <h3>${property.type}</h3>
                <p>Location: ${property.location}</p>
                <p>Price: ₹${property.price} /per month</p>
            `;
            propertyListContainer.appendChild(propertyElement);
        });
    }