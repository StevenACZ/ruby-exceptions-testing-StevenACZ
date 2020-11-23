$LOAD_PATH.unshift("./28people")

require "minitest/autorun"
require_relative "people"

class PeopleTest < Minitest::Test
  def test_raise_unpronounceable_name_error
    # skip
    data = { name: "jcbsdcnsjk", age: 20 }
    error = assert_raises(UnpronounceableName) do
      Person.new(**data)
    end
  end

  def test_raise_unpronounceable_name_error_with_correct_message
    # skip
    data = { name: "Hndbdcbiedfo", age: 20 }
    error = assert_raises(UnpronounceableName) do
      Person.new(**data)
    end
    assert_equal "This name is unpronounceable", error.message
  end

  def test_raise_invalid_age_error
    # skip
    data = { name: "Diego", age: 300 }
    error = assert_raises(InvalidAge) do
      Person.new(**data)
    end
  end

  def test_raise_invalid_age_error_with_correct_message
    # skip
    data = { name: "Diego", age: -50 }
    error = assert_raises(InvalidAge) do
      Person.new(**data)
    end
    assert_equal "This age is not possible", error.message
  end

  def test_people_creator_rescue_from_unpronounceable_name_error
    # skip
    data = { name: "Diemrnfmd", age: 30 }
    result = PeopleCreator.create_person(**data)
    assert_equal "This name is unpronounceable", result
  end

  def test_people_creator_rescue_from_invalid_age_error
    # skip
    data = { name: "Diego", age: 300 }
    result = PeopleCreator.create_person(**data)
    assert_equal "This age is not possible", result
  end
end