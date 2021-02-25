class PhoneBook {
	phoneBook;
	count;
	
	constructor() {
		this.phoneBook = new Map();
	}
	
	getCount() {
		return this.phoneBook.length;
	}
	
	// parameters are all strings
	add(firstName, lastName, phoneNumber) {
    if (!firstName || !lastName || !phoneNumber) {
      return;
    }
    if(typeof(firstName) !== 'string' || typeof(lastName) !== 'string' || typeof(phoneNumber) !== 'string'){
      return;
    }
    
    // this.phoneBook.push({
    //   firstName,
    //   lastName,
    //   phoneNumber,
    // });
    this.phoneBook.set(firstName + ' ' + lastName, {
      firstName,
      lastName,
      phoneNumber,
    })
	}
	
	getAllByNames(firstName, lastName) {
    const people = [];
		for (const person of phoneBook) {
			if (person.firstName === firstName && person.lastName === lastName) {
        people.push(person);
			} 
		}
    if(people.length === 0){
      throw "Phone number not found";
    }
    return people;
	}
  
  getByName(firstName, lastName) {
    return phoneBook.get(firstName + " " + lastName);
  }
}
