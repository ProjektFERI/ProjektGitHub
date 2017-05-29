import { OffsitePage } from './app.po';

describe('offsite App', () => {
  let page: OffsitePage;

  beforeEach(() => {
    page = new OffsitePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
