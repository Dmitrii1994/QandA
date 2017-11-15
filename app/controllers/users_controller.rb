

class UsersController < ApplicationController

  def index
    @users = [
      User.new(
        id: 1,
        name: 'Polina',
        username: 'catgirl',
        avatar_url: 'https://pp.userapi.com/c836222/v836222584/4cd2c/Sh_jwu3s56Y.jpg',
        ),
      User.new(
        id: 2,
        name: 'Dima',
        username: 'lkibbalam',
           avatar_url: 'https://pp.userapi.com/c837625/v837625590/aedc/LMRi6Rh4Vyk.jpg',
      )
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
        name:'mr.Green',
        username: 'lkibbalam',
        avatar_url: 'https://store.playstation.com/store/api/chihiro/00_09_000/container/UA/ru/999/EP4507-NPEB02124_00-AVVIRTUALB000634/1501370916000/image?_version=00_09_000&platform=chihiro&w=225&h=225&bg_color=000000&opacity=100'
    )

    @questions = [
        Question.new(text: 'How are you?', created_at: Date.parse('15.11.2017')),
        Question.new(text: 'Friend, where are you?', created_at: Date.parse('15.11.2017'))
    ]

    @new_question = Question.new
  end

end
