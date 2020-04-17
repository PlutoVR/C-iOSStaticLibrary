#include <string>

class Pet
{
public:
	Pet(int, std::string);
	int age;
	std::string getPetName();
	void setPetName(std::string);
	int getPetAge();
	void setPetAge(int);
private:
	std::string name;
};

class Person
{
public:
	Person(int, Pet);
	int getPersonAge();
	Pet getPet();
private:
	int _age;
	Pet _pet;
	int _height;
 
};
