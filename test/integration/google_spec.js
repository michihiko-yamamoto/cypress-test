describe("My first Test", () => {
  it('Shows Google', () => {
    cy.visit('https://www.google.com/')

    cy.title().should("include", "Google")
  })
})
