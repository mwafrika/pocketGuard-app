require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'The name should not be empty' do
    Transanct.first.name = nil
    expect(subject).to_not be_valid
  end

  it 'The amount should not be empty' do
    Transanct.first.amount = nil
    expect(subject).to_not be_valid
  end

  it 'The user should not be empty' do
    Transanct.first.user = nil
    expect(subject).to_not be_valid
  end

  it 'The amount should not be a string' do
    Transanct.first.amount = '40'
    expect(subject).to_not be_valid
  end
end
