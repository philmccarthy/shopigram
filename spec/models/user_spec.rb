require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :username }
    it { should validate_uniqueness_of :username }
    it { should validate_presence_of :password }
  end

  describe 'activestorage attachments' do
    it 'it can have images attached' do
      user = User.create!(username: 'Phil', password: 'password')
      user.images.attach(
        io: File.open(Rails.root + 'spec/files/test/junior-1615.jpg'),
        filename: 'img.jpg',
        content_type: 'image/*'
      )
      expect(user.images).to be_attached
    end
  end

  describe 'model methods' do
    before(:each) do
      User.create!(username: 'Phil', password: 'password')
      User.create!(username: 'Alex', password: 'password')
      User.create!(username: 'Patrick', password: 'password')
      User.create!(username: 'Mick', password: 'password')
      User.create!(username: 'Tom', password: 'password')
      User.create!(username: 'Sheila', password: 'password')
      User.all.each do |user|
        3.times do
          user.images.attach(
            io: File.open(Rails.root + 'spec/files/test/junior-1615.jpg'),
            filename: 'img.jpg',
            content_type: 'image/*')
        end
      end
    end

    it '::community returns 5 random users with >= 3 images' do
      expect(User.community.size).to eq(5)
      expect(User.third.images.size).to eq(3)
    end
    
    it '#order_by_date' do
      user = User.first
      
      expected = [user.images.third, user.images.second, user.images.first]
      actual = user.images_by_date

      expect(actual).to eq(expected)
    end
  end
end
