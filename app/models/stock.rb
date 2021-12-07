class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol) # self to make it a class method.
        # below line return the client object.
        client = IEX::Api::Client.new(
        publishable_token: Rails.application.credentials.api[:publishable_token],
        secret_token: Rails.application.credentials.api[:secret_token],
        endpoint: 'https://sandbox.iexapis.com/v1'
        )
        # this method will return price.
        client.price(ticker_symbol)
    end
end
