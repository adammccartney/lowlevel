// simple program used to reverse engineer an assembly listing 

int annelecbill () {
    int basefee = 500; // cost in cents for the basic connection 
    int base = 1000; // only hours over base will be charged
    int kwh = 19;    // cost in cent per kilowatt hour
    int use = 5200;  // num kilowatt hours used
    int total = 0;

    total = basefee + (kwh * (use - base));
    return total;
}
