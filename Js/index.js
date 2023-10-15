const host = "http://localhost:8000";

async function getData(endpoint) {
  try {
    const response = await fetch(host + endpoint);
    const data = await response.json();
    return data
  } catch (error) {
    console.error(error);
  }
}

async function displayProductsList(endpoint) {
  const data = await getData(endpoint);
  const productsList = document.getElementById("products_list");
  productsList.innerHTML = "";
  
  let displayedProductNames = {}; // เก็บชื่อสินค้าที่เราได้แสดงแล้ว

  if (data && data.length > 0) {
    data.forEach((item) => {
      const productName = item.Product_name;
      if (!displayedProductNames[productName]) {
        const divP = document.createElement("div");
        divP.classList.add("product-item");

        const img = document.createElement("img");
        img.src = item.Img;
        divP.appendChild(img);

        const pPName = document.createElement("p");
        pPName.classList.add("product-item-name");
        pPName.textContent = item.Product_name; 
        const pPPrice = document.createElement("p");
        pPPrice.classList.add("product-item-Price");
        pPPrice.textContent = `฿${item.Price}`; 
        const divText = document.createElement("div");
        divText.classList.add("product-item-content");
        divText.appendChild(pPName);
        divText.appendChild(pPPrice);
        divP.appendChild(divText);

        productsList.appendChild(divP);

        displayedProductNames[productName] = true;
      }
    });
  } else {
    productsList.textContent = "ไม่พบข้อมูล";
  }
}
displayProductsList('/products/Food');

