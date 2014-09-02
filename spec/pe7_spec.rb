require_relative '../project_euler/p00007'

require 'spec_helper'

  describe 'PE-7' do
    context '#nth_prime' do
      it 'returns the nth prime number' do
        expect(nth_prime(6)).to eq(13)
      end
    end
  end
