def marketplace_purchase_factory do
  %{
    account: build(:account),
    billing_cycle: "monthly",
    free_trial_ends_on: null,
    next_billing_date: "2017-11-05T00:00:00+00:00",
    on_free_trial: false,
    plan: build(:plan),
    unit_count: 1
  }
end
