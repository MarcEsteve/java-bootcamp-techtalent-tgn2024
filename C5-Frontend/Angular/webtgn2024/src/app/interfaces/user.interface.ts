export interface User {
  _id: number;
  usuario: string;
  pass: string;
  correo?: string;
  nombre?: string;
  profesion?: string;
  rol?: string;
  telefono?: number;
}