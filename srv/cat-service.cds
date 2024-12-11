using petro.gfex as gfex from '../db/schema';

service CatalogService {
    @readonly entity Suppliers as projection on gfex.Suppliers;
    @readonly entity ExclusiveCard as projection on gfex.ExclusiveCard;
}
