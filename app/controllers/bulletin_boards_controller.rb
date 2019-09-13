class BulletinBoardsController < ApplicationController
  before_action :set_group

  def index
    @bulletin_board = Bulletin_Board.new
    @bulletin_boards = @group.bulletin_boards.includes(:user)
  end

  def create
    @bulletin_board = @group.bulletin_boards.new(bulletin_board_params)
    if @bulletin_board.save
      redirect_to group_bulletin_boards_path(@group), notice: 'メッセージが送信されました'
    else
      @bulletin_boards = @group.bulletin_boards.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
    end
  end

  private

  def bulletin_board_params
    params.require(:bulletin_board).permit(:message, :image).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end
