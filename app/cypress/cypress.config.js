module.exports = {
    fixturesFolder: "fixtures",
    screenshotsFolder: "screenshots",
    videosFolder: "videos",
    downloadsFolder: "downloads",
    e2e: {
        specPattern: 'e2e/**/*.cy.{js,ts}',
        supportFile: false,
        
        setupNodeEvents(on, config) {
            // implement node event listeners here
        },
    },
};
