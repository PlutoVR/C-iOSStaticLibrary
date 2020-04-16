#include <string>
#include "junk.h"

// Pet

Pet::Pet(int age, std::string name) : age(age), name(name) {}

std::string Pet::getPetName()
{
    return name;
}

void Pet::setPetName(std::string newName)
{
    name = newName;
}

int Pet::getPetAge()
{
    return age;
}

void Pet::setPetAge(int newAge)
{
    age = newAge;
}

// Person

Person::Person(int age, Pet pet) : _age(age), _pet(pet) {}

int Person::getPersonAge()
{
    return _age;
}

Pet Person::getPet()
{
    return _pet;
}
