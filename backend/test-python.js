/**
 * @description      :
 * @author           : DHANUSH
 * @group            :
 * @created          : 19/07/2025 - 09:24:20
 *
 * MODIFICATION LOG
 * - Version         : 1.0.0
 * - Date            : 19/07/2025
 * - Author          : DHANUSH
 * - Modification    :
 **/
const { spawn } = require("child_process");

const python = spawn("python", ["--version"]);

python.stdout.on("data", (data) => {
  console.log(`stdout: ${data}`);
});

python.stderr.on("data", (data) => {
  console.error(`stderr: ${data}`);
});

python.on("error", (err) => {
  console.error("Failed to start python:", err);
});

python.on("close", (code) => {
  console.log(`child process exited with code ${code}`);
});
