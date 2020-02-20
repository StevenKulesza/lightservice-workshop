class Actions::DetermineTaxes
    extend LightService::Actions

    expects :tax_exempt, :tax_rate, :subtotal
    promises :taxes

    executed do |context|
        context.taxes = context.tax_exempt ? 0 : context.interim_total * context.tax_rate
    end
end