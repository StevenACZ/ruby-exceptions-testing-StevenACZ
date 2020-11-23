$LOAD_PATH.unshift("./30calencli")

require "minitest/autorun"
require_relative "calencli"

class CalencliTest < Minitest::Test
  INITIAL_DATA = [
    {
      start_date: "2020-11-03T12:00:00",
      title: "English Course",
      end_date: "2020-11-03T13:30:00",
      guests: %w[Stephanie Patricia]
    },
    {
      start_date: "2020-11-04T00:00:00",
      title: "Ruby basics 1",
      end_date: "",
      guests: %w[Diego Wences]
    },
    {
      start_date: "2020-11-11T12:00:00",
      title: "English Course",
      end_date: "2020-11-11T13:30:00",
      guests: %w[Stephanie Patricia]
    }
  ]

  # test if the initial data is loaded correctly

  # test if there is no id duplicated

  # test if you can find an event

  # test if you can create an event

  # test if you can update an event

  # test if you can delete an event

end