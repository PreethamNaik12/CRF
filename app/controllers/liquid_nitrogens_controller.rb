class LiquidNitrogensController < ApplicationController
  before_action :set_liquid_nitrogen, only: %i[ show edit update destroy ]

  # GET /liquid_nitrogens or /liquid_nitrogens.json
  def index
    @liquid_nitrogens = LiquidNitrogen.all
  end

  def show
  end

  # GET /liquid_nitrogens/new
  def new
    @liquid_nitrogen = LiquidNitrogen.new
    @user = User.find(params[:id])
    @liquid_nitrogen.build_equipment_table

  end

  # GET /liquid_nitrogens/1/edit
  def edit
  end

  # POST /liquid_nitrogens or /liquid_nitrogens.json
  def create
    @liquid_nitrogen = LiquidNitrogen.new(liquid_nitrogen_params)
    @liquid_nitrogen.user = current_user
    @liquid_nitrogen.status="pending"
    @liquid_nitrogen.build_equipment_table

    if @liquid_nitrogen.user.role=='student'||@liquid_nitrogen.user.role=='Faculty'
         @liquid_nitrogen.amount = (60.0)*@liquid_nitrogen.quantity
    end
    if @liquid_nitrogen.user.role=='external'
         @liquid_nitrogen.amount = (80.0)*@liquid_nitrogen.quantity
    end
    respond_to do |format|
      if @liquid_nitrogen.save
        if @liquid_nitrogen.user.role=='student'||@liquid_nitrogen.user.role=='faculty'
          LiquidNitrogenMailer.with(id:@liquid_nitrogen.id, userid:current_user.id).InternalMail.deliver_later
        else
          LiquidNitrogenMailer.with(id:@liquid_nitrogen.id, userid:current_user.id).ExternalMail.deliver_later
        end
        format.html { redirect_to home_index_path, notice: "Liquid nitrogen was successfully created." }
        format.json { render :show, status: :created, location: @liquid_nitrogen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @liquid_nitrogen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liquid_nitrogens/1 or /liquid_nitrogens/1.json
  def update
    @liquid_nitrogen.status="alloted"
    @liquid_nitrogen.build_equipment_table

    respond_to do |format|
      if @liquid_nitrogen.update(liquid_nitrogen_params)
        LiquidNitrogenAllotedMailer.with(id:@liquid_nitrogen.id, userid:current_user.id).Mail.deliver_later
        format.html { redirect_to slotbooker_nitrogen_path(@liquid_nitrogen), notice: "Liquid nitrogen was successfully updated." }
        format.json { render :show, status: :ok, location: @liquid_nitrogen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @liquid_nitrogen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liquid_nitrogens/1 or /liquid_nitrogens/1.json
  def destroy
    @liquid_nitrogen.destroy

    respond_to do |format|
      format.html { redirect_to liquid_nitrogens_url, notice: "Liquid nitrogen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liquid_nitrogen
      @liquid_nitrogen = LiquidNitrogen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def liquid_nitrogen_params
      params.require(:liquid_nitrogen).permit(:quantity, :purpose, :more, :debit, :slotdate, :slottime, :status,:user_id,:amount,  equipment_table_attributes: [:username, :app_no, :debit_head, :dummy, :pay, :dept, :equipname, :email,:role, :profesion, :orgaddress,:orgname] )
    end
end
