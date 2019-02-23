class PartnerMailerJob
  include Sidekiq::Worker

  def perform(current_organization, distribution)
    DistributionMailer.partner_mailer(current_organization, distribution).deliver_now
  end
end
