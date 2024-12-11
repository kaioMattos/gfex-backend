namespace petro.gfex;

entity Suppliers {
  key documentId  : String;
  cnpj            : String;
  manufacture     : String;
  class           : String;
  validatedPetro  : String;
  createdAt       : DateTime;
  updatedAt       : DateTime;
  exclusiveCard   : Association to many ExclusiveCard on exclusiveCard.documentId = documentId;
}

entity ExclusiveCard {
  key id          : UUID;
  file            : LargeString;
  nameFile        : String;
  extension       : String(10);
  expiredDate     : DateTime;
  createdAt       : DateTime;
  updatedAt       : DateTime;
  documentId      : String;
  supplier : Association to Suppliers on supplier.documentId = documentId;
}
