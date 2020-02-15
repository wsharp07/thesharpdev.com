/// <reference types="Cypress" />

describe('My First Test', function() {
  it('Visit part 4 and ensure part 3 link', function() {
    cy.visit('/');
    cy.contains('Temp/Humidity IoT - Part 4').click();

    cy.url()
      .should('include', '/posts/th-iot-part-4');

    cy.contains('part three').click();

    cy.url()
      .should('include', '/posts/th-iot-part-3');
  })
});