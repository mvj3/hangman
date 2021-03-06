# encoding: UTF-8
#
# NOTE 该remote测试不保证使用了，还是看local测试吧
#

require File.expand_path('../test_helper.rb', __FILE__)

class StrikinglyInterviewTest < HangmanTest
  def test_hangman
    @scores = []

    100.times do
      score = play_hangman Hangman::StrikinglyInterview.new(ENV['EMAIL'] || "moc.liamg@emojvm".reverse)

      @scores << score
      `echo #{score} >> scores`
      puts @scores.sort.inspect
    end

  end if ENV['StrikinglyInterview']

end
