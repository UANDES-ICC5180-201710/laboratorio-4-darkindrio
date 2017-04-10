require 'rails_helper'
require 'factory_girl'
# This will guess the User class
FactoryGirl.define do
  factory :person do
    first_name "Andres"
    last_name  "abb"
    teacher true
  end
end

RSpec.describe Person, type: :model do
  it "is teacher" do
  	person = build(:person)  
    expect(person.is_professor).to eq true
  end
  it "delete person" do
  	person = Person.create(first_name: 'Andres',is_professor: true)
  	person.destroy
  	is_delete =  Person.where(first_name: 'Andres').exists?(conditions = :none)
  	expect(is_delete).to eq false
  end

  it "create two person with the same email" do
  	person1 = Person.create(email: 'abc@miuandes.cl')
  	person2 = Person.create(email: 'abc@miuandes.cl')
  	person1.save
  	save_person2 = person2.save
  	expect(save_person2).to eq false
  end

  it "create person with large name" do
  	person = Person.create(first_name: 'ddddddddddddddddddddddddddddddddddddddd',is_professor: true).should_not be_valid
  end

  it "create person with large last name" do
  	person = Person.create(last_name: 'ddddddddddddddddddddddddddddddddddddddd',is_professor: true).should_not be_valid
  end


end
