require 'test/unit'
require_relative '../lib/classnames'

class ClassNamesTest < Test::Unit::TestCase
  include ClassNames

  def test_strings
    assert_equal 'works with strings', classnames('works', 'with', 'strings')
  end

  def test_array
    assert_equal 'works with an array', classnames(%w{works with an array})
  end

  def test_hash
    assert_equal 'works_with a_hash', classnames({
      works_with: true,
      a_hash: true,
      not_me: false
    })
  end

  def test_proc
    assert_equal 'works_with_procs and_lambdas', classnames(
      Proc.new { 'works_with_procs' },
      ->{ 'and_lambdas' }
    )
  end

  def test_falsey_things
    assert_equal 'only us', classnames(
      nil,
      'only',
      false,
      { 'things': false },
      ['us']
    )
  end

  def test_the_whole_thing
    assert_equal 'this is useful', classnames(
      'this',
      ['is'],
      nil,
      false,
      ->{ nil },
      { useful: true },
    )
  end
end
