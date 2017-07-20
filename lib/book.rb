class Book
  NORMAL = [ {title: '坊ちゃん'}, {title: '我輩は猫である'} ]
  NEWCOMER = [ {title: '桐島、部活やめるってよ'}, {title: 'ゆるいカーブ'} ]

  def initialize(normal: nil, newcomer: nil)
    @bookshelf = if normal || newcomer
      normal.to_a + newcomer.to_a
    else
      NORMAL + NEWCOMER
    end
  end

  def message
    @bookshelf.sample
  end
end
