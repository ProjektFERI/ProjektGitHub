import { TestBed, inject } from '@angular/core/testing';

import { PickTeamService } from './pick-team.service';

describe('PickTeamService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [PickTeamService]
    });
  });

  it('should be created', inject([PickTeamService], (service: PickTeamService) => {
    expect(service).toBeTruthy();
  }));
});
