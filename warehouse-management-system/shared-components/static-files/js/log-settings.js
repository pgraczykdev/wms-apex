'use strict'

class LogSettings {
    static async setLogLevel() {
        try {
            const logLevel = apex.item("P9010_LOG_LEVEL").getValue();

            const data = await apex.server.process("SET_LOG_LEVEL", {
                x01: logLevel
            });

            apex.message.showPageSuccess(data.message);
        } catch (error) {
            apex.message.showErrors([
                {
                    type: "error",
                    location: "page",
                    message: error.message || "Failed to update log level. Please try again.",
                    unsafe: false
                }
            ]);
        }
    }
}
