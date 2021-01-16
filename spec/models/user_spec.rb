require 'rails_helper'

RSpec.describe User, type: :model do
  # describe 'validations' do
  #   it { should validate_presence_of :}
  # end

  # describe 'relationships' do
  #   it {should belong_to :}
  #   it {should have_many :}
  # end

  describe 'roles' do
    it 'can be created as an admin' do
      user = User.create!(username: 'phil', password: 'password', role: 1)
  end
end