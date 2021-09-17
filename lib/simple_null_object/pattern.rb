# frozen_string_literal: true

module SimpleNullObject
  # Class with nil/null methods
  class Pattern
    def self.current_user
      OpenStruct.new(name: 'Guest User', first_name: 'Guest', last_name: 'User', email: 'test@guest.com')
    end

    def self.id
      raise ActiveRecord::RecordNotFound, "You are calling id on an account that doesn't exist."
    end

    def self.valid?
      false
    end

    def self.present?
      false
    end

    def self.blank?
      true
    end

    def self.save
      false
    end

    def self.save!
      raise ActiveRecord::RecordInvalid
    end

    def self.update
      false
    end

    def self.update!
      raise ActiveRecord::RecordInvalid
    end
  end  
end
