class Actions::DetermineInterimValue
    extend LightService::Actions

    expects :promo, :subtotal
    promises :interim_value

    executed do |context|
        context.interim_value = context.subtotal - context.promo_value
    end
end