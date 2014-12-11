require "spec_helper"

describe Lita::Handlers::Doitlive, lita_handler: true do
  it { is_expected.to route_command("do it live").to(:do_it_live) }
  it { is_expected.to route_command("DO IT LIVE").to(:do_it_live) }
  it { is_expected.to route_command("we'll do it live!").to(:do_it_live) }
end
