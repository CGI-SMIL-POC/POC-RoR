require 'spec_helper'

RSpec.describe Person, type: :model do
  it "should not allow emptyf ull names" do
    person = Person.new(name: '', age: 10)
    person.valid?
    expect(person.errors[:name]).to include("can't be blank")
  end

end

