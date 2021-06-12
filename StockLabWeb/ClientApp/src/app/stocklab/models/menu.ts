import {Programa} from './programa';

export class Menu {
  id: string;
  nombre: string;
  programas: Programa[];
  constructor() {
    this.programas = [];
  }
}
