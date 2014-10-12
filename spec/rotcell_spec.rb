require 'spec_helper.rb'

describe Rotcell do
  describe "#calc" do
    subject { Rotcell.new(input_data).calc }

    samples = [
      ["YokoHamarb", "acdfp"],
      ["Ruby", "twx"],
      ["ruby", "nst"],
      ["PHP", "gkluv"],
      ["a", "bfg"],
      ["b", "acfgh"],
      ["m", "ghilnqrs"],
      ["mg", "bcdhilmq"],
      ["Mg", "fhiklmpq"],
      ["MS", "ijmnoqrt"],
      ["mG", "bcdhilmq"],
      ["lf", "abcghklp"],
      ["paq", "lprvw"],
      ["bFH", "abcfg"],
      ["Agh", "abcfgklm"],
      ["Msul", "pruvw"],
      ["RSRX", "jorty"],
      ["xTsn", "ijmos"],
      ["FHwnQ", "lmorsvwx"],
      ["jIDIb", "cfghilmo"],
      ["rLGPq", "ilmnprvx"],
      ["WRiFhd", "ceg"],
      ["gkfLfh", "cfglmpqr"],
      ["STydYQ", "hklmpruv"],
      ["spaeAWJ", "cdehimns"],
      ["xTxTXwY", "mwx"],
      ["xyQMkMi", "cdejlnow"],
      ["HJkxpWxA", "cdhkp"],
      ["hgaGDodg", "djo"],
      ["abKBmkBc", "bdfik"],
      ["mCvlhnilm", "adfgikqr"],
      ["StyxTYsIh", "imnostxy"],
      ["HLHnhLMLC", "ahlmn"],
      ["DuHmbFQysI", "ehj"],
      ["cGfGCaLgCq", "acguv"],
      ["OisYOrOXwq", "ilnstvwx"],
      ["wMnYIukHAvO", "bdefhjmn"],
      ["HCfBhKHkhDF", "abdghikn"],
      ["pUPmwrHsYSH", "morsy"],
      ["PnCYYWnPoUxq", "bfopv"],
      ["DiojiYXowowr", "cilmnstw"],
      ["HLNsiNMnbAnn", "abdkm"]
    ]

    samples.each do |sample|
      context "when input is #{sample[0]}" do
        let(:input_data) { sample[0] }
        it { is_expected.to eq(sample[1]) }
      end
    end
  end

  describe "#initialize_rotcells" do
    it "returns alphabet array" do
      rot_cells = Rotcell.new('hoge').send(:initialize_rotcells)

      expect(rot_cells[0][0]).to eq('a')
      expect(rot_cells[0][1]).to eq('b')
      expect(rot_cells[0][2]).to eq('c')
      expect(rot_cells[0][3]).to eq('d')
      expect(rot_cells[0][4]).to eq('e')
      expect(rot_cells[1][0]).to eq('f')
      expect(rot_cells[1][1]).to eq('g')
      expect(rot_cells[1][2]).to eq('h')
      expect(rot_cells[1][3]).to eq('i')
      expect(rot_cells[1][4]).to eq('j')
      expect(rot_cells[2][0]).to eq('k')
      expect(rot_cells[2][1]).to eq('l')
      expect(rot_cells[2][2]).to eq('m')
      expect(rot_cells[2][3]).to eq('n')
      expect(rot_cells[2][4]).to eq('o')
      expect(rot_cells[3][0]).to eq('p')
      expect(rot_cells[3][1]).to eq('q')
      expect(rot_cells[3][2]).to eq('r')
      expect(rot_cells[3][3]).to eq('s')
      expect(rot_cells[3][4]).to eq('t')
      expect(rot_cells[4][0]).to eq('u')
      expect(rot_cells[4][1]).to eq('v')
      expect(rot_cells[4][2]).to eq('w')
      expect(rot_cells[4][3]).to eq('x')
      expect(rot_cells[4][4]).to eq('y')
    end
  end
end
