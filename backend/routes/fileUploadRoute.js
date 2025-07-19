/**
 * @description      :
 * @author           : DHANUSH
 * @group            :
 * @created          : 18/07/2025 - 20:35:01
 *
 * MODIFICATION LOG
 * - Version         : 1.0.0
 * - Date            : 18/07/2025
 * - Author          : DHANUSH
 * - Modification    :
 **/
const express = require("express");
const fileUploadRoute = express.Router();
const FileUploadController = require("../controllers/fileUploadController");
const multer = require("multer");

const storage = multer.diskStorage({
  destination: "uploads/",
  filename: (_, file, cb) => cb(null, file.originalname),
});
const upload = multer({ storage });

fileUploadRoute.post(
  "/images",
  upload.single("image"),
  FileUploadController.generateImages
);
fileUploadRoute.get("/images/get", FileUploadController.getAllImages);

module.exports = fileUploadRoute;
