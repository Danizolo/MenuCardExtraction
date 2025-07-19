/**
 * @description      :
 * @author           : DHANUSH
 * @group            :
 * @created          : 18/07/2025 - 20:39:22
 *
 * MODIFICATION LOG
 * - Version         : 1.0.0
 * - Date            : 18/07/2025
 * - Author          : DHANUSH
 * - Modification    :
 **/
const { spawn } = require("child_process");
const path = require("path");
const axios = require("axios");

const cleanDishes = (dishes) => {
  const blacklist = [
    "menu",
    "price",
    "mrp",
    "veg",
    "nonveg",
    "drinks",
    "special",
    "offer",
    "discount",
  ];
  return dishes
    .map((name) => name.trim())
    .filter(
      (name) =>
        name.length > 3 &&
        /^[a-zA-Z\s]+$/.test(name) &&
        !blacklist.includes(name.toLowerCase())
    );
};

exports.extractDishNames = async (imagePath) => {
  return new Promise((resolve, reject) => {
    const python = spawn("python", ["./ocr.py", imagePath]);

    let data = "";
    let errorData = "";

    python.stdout.on("data", (chunk) => (data += chunk));
    python.stderr.on("data", (chunk) => (errorData += chunk));

    python.on("close", (code) => {
      if (code !== 0) {
        return reject(
          new Error(`Python OCR exited with code ${code}: ${errorData}`)
        );
      }
      try {
        const rawDishes = JSON.parse(data);
        const filtered = cleanDishes(rawDishes);
        resolve(filtered);
      } catch (e) {
        reject(new Error(`Failed to parse OCR output: ${e.message}`));
      }
    });
  });
};

exports.generateImage = async (dish) => {
  try {
    const UNSPLASH_ACCESS_KEY = "j3_Qeta2H0Xmfqck4spDBeAeymi8kAZcwQZic6PawZ8";
    const response = await axios.get("https://api.unsplash.com/search/photos", {
      params: {
        query: `${dish} food`,
        orientation: "squarish",
        per_page: 1,
      },
      headers: {
        Authorization: `Client-ID ${UNSPLASH_ACCESS_KEY}`,
      },
    });

    const results = response.data.results;
    if (results && results.length > 0) {
      return results[0].urls.small; // Or .regular for larger image
    } else {
      console.warn(`No Unsplash image found for: ${dish}`);
      return null;
    }
  } catch (error) {
    console.error(`Unsplash API failed for "${dish}":`, error.message);
    return null;
  }
};
