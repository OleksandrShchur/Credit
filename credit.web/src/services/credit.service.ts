import { Injectable } from '@angular/core';
import { HttpHeaders } from '@angular/common/http';

import { BaseService } from './base.service';

@Injectable()
export class CreditService extends BaseService {
  calculateModel(budget: number, data: any) {
    const headers = new HttpHeaders().set(
      'Content-Type',
      'application/json; charset=utf-8'
    );

    const data_request: any = {
      budget: budget,
      data: data,
    };

    return this.http.post(
      `${this.baseUrl}calculate_model/`,
      JSON.stringify(data_request)
    );
  }
}
