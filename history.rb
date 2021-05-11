class history
    attr_accessor :plays
    attr_accessor :opponent_plays
    attr_accessor :score
    
    def initialize
        @opponent_plays = Array.new
        @plays = Array.new
        @score = 0
    end
    def log_play(move)
    end
    def log_opponent_play(move)
    end
    def add_score()
    end
end