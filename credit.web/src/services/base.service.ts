import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable()
export class BaseService {
  protected baseUrl: string = 'http://127.0.0.1:8000/api';

  constructor(protected http: HttpClient) {}
}
