// ~/.config/efm-langserver/eslint-formatter.js
// Thanks to reykjalin for providing these sensible defaults!

function getErrorSeverity(msg) {
  if (msg.fatal || msg.severity >= 2) return "error";
  return "warning";
}

module.exports = function (results) {
  return results.reduce(
    (acc, res) =>
      acc +
      res.messages.reduce(
        (mAcc, msg) =>
          mAcc +
          `${res.filePath}:${msg.line || 0}:${msg.column || 0}:${getErrorSeverity(msg)}:${msg.message}${msg.ruleId ? " " + msg.ruleId : ""}` +
          "\n",
        "",
      ),
    "",
  );
};
