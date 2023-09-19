using {travel as t} from '../db/schema';
service travelService{
    entity Passenger as projection on t.Passenger;
    entity Travel as projection on t.Travel
}