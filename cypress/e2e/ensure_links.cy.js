/// <reference types="Cypress" />

describe('Part 4 E2E', function() {
  it('Visit part 4 and ensure part 3 link', function() {
    cy.visit('/');
    cy.contains('Temp/Humidity IoT - Part 4').click();

    cy.url()
      .should('include', '/posts/2020/th-iot-part-4');

    cy.contains('part three').click();

    cy.url()
      .should('include', '/posts/2020/th-iot-part-3');
  })
});