class Actions::DetermineTaxes
    extend LightService::Actions

    expects :interim_total, :taxes
    promises :total

    executed do |context|
        context.total = context.interim_total * context.taxes
    end
end