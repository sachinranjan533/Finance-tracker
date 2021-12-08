class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol) # self to make it a class method.
        # below line return the client object.
        client = IEX::Api::Client.new(
        publishable_token: Rails.application.credentials.api[:publishable_token],
        secret_token: Rails.application.credentials.api[:secret_token],
        endpoint: 'https://sandbox.iexapis.com/v1'
        )
        # this method will return object if not nil else return nil.
        begin
            new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name, last_price: client.price(ticker_symbol))
        rescue => exception
            return nil
        end
    end
end
