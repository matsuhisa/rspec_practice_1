require 'spec_helper'

RSpec.describe Book do
  describe '#message' do
    let(:normal){ [ { title: '季節のかたみ' }, { title: '台所のおと' } ] }
    let(:newcomer){ [ { title: '何様' }, { title: 'ラジオラジオラジオ！' } ] }

    context '本の指定なし' do
      it { expect(Book.new.message[:title] ).to eq('坊ちゃん') | eq('我輩は猫である') | eq('桐島、部活やめるってよ') | eq('ゆるいカーブ') }
    end

    context '本の指定あり' do
      it { expect(Book.new(normal: normal, newcomer: newcomer).message[:title] ).to eq('季節のかたみ') | eq('台所のおと') | eq('何様') | eq('ラジオラジオラジオ！') }
    end

    context '本の指定新刊のみあり' do
      it { expect(Book.new(newcomer: newcomer).message[:title] ).to eq('何様') | eq('ラジオラジオラジオ！') }
    end
  end
end
