import { Injectable } from '@angular/core';
import { HttpHeaders } from '@angular/common/http';

import { BaseService } from './base.service';
import { PrepareModel } from 'src/models/prepareModel';

@Injectable()
export class CreditService extends BaseService {
  calculateModel(body: PrepareModel) {
    const headers = new HttpHeaders().set(
      'Content-Type',
      'application/json; charset=utf-8'
    );

    return this.http.post(`${this.baseUrl}/calculate_model/`, body, {
      headers: headers,
    });
  }
}
