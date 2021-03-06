require 'rails_helper'

RSpec.describe 'prizes/_form' do
  before(:each) { render 'admin/prizes/form', prize: Prize.new }

  it { should require_field '#prize_title' }
  it { should require_field '#prize_quantity' }
  it { should require_field '#prize_cost' }
  it { should validate_field '#prize_quantity', min: 1, step: 1 }
  it { should validate_field '#prize_cost', min: 1, step: 1 }
end
