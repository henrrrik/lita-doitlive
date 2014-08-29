require "spec_helper"

describe Lita::Handlers::Doitlive, lita_handler: true do
  it { routes_command("do it live").to(:do_it_live) }
  it { routes_command("DO IT LIVE").to(:do_it_live) }
  it { routes_command("we'll do it live!").to(:do_it_live) }
end
