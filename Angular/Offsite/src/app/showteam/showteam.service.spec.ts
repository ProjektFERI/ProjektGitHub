import { TestBed, inject } from '@angular/core/testing';

import { ShowteamService } from './showteam.service';

describe('ShowteamService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ShowteamService]
    });
  });

  it('should be created', inject([ShowteamService], (service: ShowteamService) => {
    expect(service).toBeTruthy();
  }));
});
