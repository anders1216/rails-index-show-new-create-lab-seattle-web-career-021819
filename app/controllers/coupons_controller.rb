class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.create(store: params['coupon']['store'], coupon_code: params['coupon']['coupon_code'])
    redirect_to coupon_path(@coupon)
    # "/coupons/#{@coupon.id}"
  end

# private
#
#   def coupons_params
#     params.require(:coupon).permit(coupon[:store], coupon[:coupon_code])
#   end
end
