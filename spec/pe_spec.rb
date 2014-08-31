require 'spec_helper'

  describe :nth_prime do

    context '#nth_prime' do
      it 'returns the nth prime number' do
        expect(nth_prime(6)).to eq(13)
      end
    end
  end
