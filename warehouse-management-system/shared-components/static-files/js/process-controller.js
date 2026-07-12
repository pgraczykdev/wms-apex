'use strict'

class ProcessController {
    static getGridWidget() {
        const ig = apex.region('process-controller-ig').widget();

        if (ig.length === 0) {
            throw new Error("Process grid not found on the page.");
        }

        return ig;
    }

    static getSelectedJobName() {
        const ig = ProcessController.getGridWidget();
        const grid = ig.interactiveGrid("getViews", "grid");
        const selectedRecords = grid.view$.grid("getSelectedRecords");

        if (selectedRecords.length === 0) {
            throw new Error("Select a process first.");
        }

        if (selectedRecords.length > 1) {
            throw new Error("Select only one process.");
        }

        return grid.model.getValue(selectedRecords[0], "FULL_JOB_NAME");
    }

    static refreshGrid() {
        ProcessController.getGridWidget().interactiveGrid("refresh");
    }

    static async runProcess(jobName) {
        const data = await apex.server.process("RUN_PROCESS", { x01: jobName });

        if (data.error) {
            throw new Error(data.message);
        }

        ProcessController.refreshGrid();
        apex.message.showPageSuccess(data.message);
    }

    static async stopProcess(jobName) {
        const data = await apex.server.process("STOP_PROCESS", { x01: jobName });

        if (data.error) {
            throw new Error(data.message);
        }

        ProcessController.refreshGrid();
        apex.message.showPageSuccess(data.message);
    }

    static async run() {
        try {
            const jobName = ProcessController.getSelectedJobName();
            await ProcessController.runProcess(jobName);
        } catch (error) {
            apex.message.clearErrors();
            apex.message.showErrors([
                {
                    type: "error",
                    location: "page",
                    message: error.message || "Failed to start the process. Please try again.",
                    unsafe: false
                }
            ]);
        }
    }

    static async stop() {
        try {
            const jobName = ProcessController.getSelectedJobName();
            await ProcessController.stopProcess(jobName);
        } catch (error) {
            apex.message.clearErrors();
            apex.message.showErrors([
                {
                    type: "error",
                    location: "page",
                    message: error.message || "Failed to stop the process. Please try again.",
                    unsafe: false
                }
            ]);
        }
    }
}
