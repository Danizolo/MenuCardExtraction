/**
 * @description      :
 * @author           : DHANUSH
 * @group            :
 * @created          : 18/07/2025 - 20:43:49
 *
 * MODIFICATION LOG
 * - Version         : 1.0.0
 * - Date            : 18/07/2025
 * - Author          : DHANUSH
 * - Modification    :
 **/
const getImages = require("../helpers/fileUploadHelpers");
const path = require("path");

const { extractDishNames } = require("../helpers/fileUploadHelpers");
const { generateImage } = require("../helpers/fileUploadHelpers");
const imagesModel = require("../models/images");

exports.generateImages = async (req, res) => {
  try {
    if (!req.file) return res.status(400).send("No image uploaded.");

    const imagePath = path.resolve(req.file.path);
    const dishes = await extractDishNames(imagePath);

    const results = await Promise.all(
      dishes.map(async (dish) => {
        const image = await generateImage(dish);
        return { dish, image };
      })
    );

    // Saving information into database
    await imagesModel.create({
      MENU: req.file.originalname,
      DISHES: results,
    });

    // url: `${req.protocol}://${req.get("host")}/uploads/${filename}`

    res.json(results);
  } catch (error) {
    console.error("Error processing menu:", error);
    res.status(500).json({ error: error.message || "Internal Server Error" });
  }
};

exports.getAllImages = async (req, res) => {
  try {
    const dishes = await imagesModel.findAll(); // Sequelize SELECT * FROM dishes;
    res.status(200).json(dishes);
  } catch (error) {
    console.error("Error fetching dishes:", error);
    res.status(500).json({ message: "Error retrieving dishes." });
  }
};
