class Actions::FindStateTaxRate
    extend LightService::Actions

    expects :state
    promises :tax_rate

    executed do |context|
        context.tax_rate = StateTaxRates::ALL_RATES[context.state]
        next if context.tax_rate.present?
        context.fail_and_return!(
            "You screwed up",
            error_code: 69
        )
    end
end