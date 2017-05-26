import { Htmlparser2Page } from './app.po';

describe('htmlparser2 App', () => {
  let page: Htmlparser2Page;

  beforeEach(() => {
    page = new Htmlparser2Page();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
