class CustomRawResponse
  attr_reader :code

  def initialize(code, body)
    @code = code
    @body = body
  end

  def to_str
    @body.to_json
  end

  def self.price_estimates_response
    {
      prices: [
      { product_id: "26546650-e557-4a7b-86e7-6a3942445247",
        currency_code: "USD",
        display_name: "POOL",
        estimate: "$7",
        low_estimate: 7,
        high_estimate: 7,
        surge_multiplier: 1,
        duration: 640,
        distance: 5.34},
       {product_id: "08f17084-23fd-4103-aa3e-9b660223934b",
        currency_code: "USD",
        display_name: "UberBLACK",
        estimate: "$23-29",
        low_estimate: 23,
        high_estimate: 29,
        surge_multiplier: 1,
        duration: 640,
        distance: 5.34},
       {product_id: "9af0174c-8939-4ef6-8e91-1a43a0e7c6f6",
        currency_code: "USD",
        display_name: "UberSUV",
        estimate: "$36-44",
        low_estimate: 36,
        high_estimate: 44,
        surge_multiplier: 1.25,
        duration: 640,
        distance: 5.34},
       {product_id: "aca52cea-9701-4903-9f34-9a2395253acb",
        currency_code: nil,
        display_name: "uberTAXI",
        estimate: "Metered",
        low_estimate: nil,
        high_estimate: nil,
        surge_multiplier: 1,
        duration: 640,
        distance: 5.34},
       {product_id: "a27a867a-35f4-4253-8d04-61ae80a40df5",
        currency_code: "USD",
        display_name: "uberX",
        estimate: "$15",
        low_estimate: 15,
        high_estimate: 15,
        surge_multiplier: 1,
        duration: 640,
        distance: 5.34}
        ],
      code: 200
      }
  end

  def self.time_estimates_response
    {times:
      [
        {localized_display_name: "uberPOOL",
        estimate: 180,
        display_name: "uberPOOL",
        product_id: "26546650-e557-4a7b-86e7-6a3942445247"},
       {localized_display_name: "uberX",
        estimate: 180,
        display_name: "uberX",
        product_id: "a1111c8c-c720-46c3-8534-2fcdd730040d"},
       {localized_display_name: "uberXL",
        estimate: 420,
        display_name: "uberXL",
        product_id: "821415d8-3bd5-4e27-9604-194e4359a449"},
       {localized_display_name: "UberBLACK",
        estimate: 180,
        display_name: "UberBLACK",
        product_id: "d4abaae7-f4d6-4152-91cc-77523e8165a4"
        }
      ]
    }
  end

end