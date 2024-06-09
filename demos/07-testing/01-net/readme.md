

describe('NavbarService', () => {
  let service: NavbarService;
  let httpMock: HttpTestingController;

  beforeEach(() => {
    TestBed.configureTestingModule({
      imports: [HttpClientTestingModule],
      providers: [
        NavbarService
      ]
    });

    service = TestBed.inject(NavbarService);
    httpMock = TestBed.inject(HttpTestingController);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });

  it('should retrieve nav items from API via GET', () => {
    const dummyNavItems: NavItem[] = [
      { title: 'Home', url: '/home' },
      { title: 'About', url: '/about' }
    ];

    service.getItems().subscribe(navItems => {
      expect(navItems.length).toBe(2);
      expect(navItems).toEqual(dummyNavItems);
    });

    const request = httpMock.expectOne(`${environment.apiUrl}`);
    expect(request.request.method).toBe('GET');
    request.flush(dummyNavItems);
  });

  afterEach(() => {
    httpMock.verify();
  });
});
