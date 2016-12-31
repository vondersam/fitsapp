class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_messageable
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"
  has_many :plans

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :pic_url, presence: true


  # roles for cancancan
  ROLES = %i[admin trainer user]

  # Mailboxer email configuration
  def mailboxer_email(object)
    email
  end

  # Mailboxer users page
  def index
    @users = User.order('created_at DESC').paginate(page: params[:page], per_page: 30)
  end

  # for activeadmin
  def name
    "#{email}"
  end
end
