# frozen_string_literal: true

require './spec/spec_helper'
require './lib/lab1/convert'

RSpec.describe Convertator do
  describe '.convertation' do
    let(:run_C_C) { Convertator.convertation(5, 'C', 'C') }
    let(:run_C_F) { Convertator.convertation(0, 'C', 'F') }
    let(:run_K_C) { Convertator.convertation(273.15, 'K', 'C') }
    let(:run_K_F) { Convertator.convertation(0, 'K', 'F') }
    let(:run_F_C) { Convertator.convertation(0, 'F', 'C') }
    context 'convertation_C_C' do
      it { expect(run_C_C).to eq(5) }
    end
    context 'convertation_C_F' do
      it { expect(run_C_F).to eq(32) }
    end
    context 'convertation_K_C' do
      it { expect(run_K_C).to eq(0) }
    end
    context 'convertation_K_F' do
      it { expect(run_K_F).to eq(-459.67) }
    end
    context 'convertation_F_C' do
      it { expect(run_F_C).to eq(-17.77777777777778) }
    end
  end
end
