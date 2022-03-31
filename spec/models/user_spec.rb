# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(Name: 'Test name', email: 'test@test.com ', password: '123456')
  end
  before { subject.save }

  # it 'name can not be nil' do
  #   subject.name = nil
  #   expect(subject).not_to be_valid
  # end

  it 'should validate the name' do
    subject.Name = 'Timo'
    expect(subject).to be_valid
  end
end
