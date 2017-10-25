class Character < ApplicationRecord
  mount_uploader :image, AvatarUploader

  MAX_KICK_COUNT = 20


  def fight_with(opponent)
    kick_number = 1
    while kick_number <= MAX_KICK_COUNT
      self.kick opponent
      return [self, opponent] if opponent.health_points <= 0

      opponent.kick self
      return [opponent, self] if self.health_points <= 0

      kick_number += 1
    end

    [nil, nil]
  end

  def kick(opponent)
    opponent.health_points -= self.attack_power
  end
end
