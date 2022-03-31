# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Spending, type: :model do
  let(:user) { User.create(Name: 'First', email: 'first@first.com', password: '123456') }
  let(:group) do
    Group.create(Name: 'Category1',
                 Icon: 'https://static8.depositphotos.com/1338574/829/i/600/depositphotos_8293001-stock-photo-the-number-1-in-gold.jpg',
                 user_id: user.id)
  end
  let(:spending) { Spending.create(name: 'Food', amount: 20, user_id: user.id, group_id: group.id) }

  describe 'Validations' do
    context 'when valid' do
      it { expect(spending).to be_valid }
    end

    it 'name should be valid ' do
      spending.name = nil
      expect(spending).to_not be_valid
    end

    it 'amount should be valid ' do
      spending.amount = 22
      expect(spending).to be_valid
    end
  end
end
