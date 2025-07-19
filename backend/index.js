/**
 * @description      :
 * @author           : DHANUSH
 * @group            :
 * @created          : 18/07/2025 - 20:26:38
 *
 * MODIFICATION LOG
 * - Version         : 1.0.0
 * - Date            : 18/07/2025
 * - Author          : DHANUSH
 * - Modification    :
 **/
const express = require("express");
const application = express();
const port = 3999;
const cors = require("cors");
const bodyParser = require("body-parser");
const fileUploadRoute = require("./routes/fileUploadRoute");
const path = require("path");

application.use(
  cors({
    origin: "http://localhost:8080",
  })
);
application.use(bodyParser.json());
application.listen(port, () => {
  console.log("Application running successfully on port " + port);
});
application.use("/uploads", express.static(path.join(__dirname, "uploads")));

application.use("/api", fileUploadRoute);
