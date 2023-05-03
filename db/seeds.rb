p "create Users"
User.create!(
  email: 'user1@gmail.com',
  password: '11111111',
  name: 'nickname',
  self_introduction: '最近競馬を始めました！',
  gender: 1,
  profile_image: open("#{Rails.root}/db/dummy_images/1.jpg")
)
User.create!(
  email: 'user2@gmail.com',
  password: '11111111',
  nickname: 'オリビア',
  self_introduction: 'ウマ娘友達が欲しいです',
  gender: 1,
  profile_image: open("#{Rails.root}/db/dummy_images/2.jpg")
)
User.create!(
  email: 'user3@gmail.com',
  password: '11111111',
  nickname: 'エヴァ',
  self_introduction: 'プロフィールをご覧いただきありがとうございます。ウマ娘から始めて、今は競馬場にも行ってます。',
  gender: 1,
  profile_image: open("#{Rails.root}/db/dummy_images/3.jpg")
)
User.create!(
  email: 'user4@gmail.com',
  password: '11111111',
  nickname: 'ノア',
  self_introduction: '乗馬をして5年経ちました。',
  gender: 0,
  profile_image: open("#{Rails.root}/db/dummy_images/4.jpg")
)
User.create!(
  email: 'user5@gmail.com',
  password: '11111111',
  nickname: 'リアム',
  self_introduction: '関西に住んでいます。阪神競馬場によくいきます。',
  gender: 0,
  profile_image: open("#{Rails.root}/db/dummy_images/5.jpg")
)
User.create!(
  email: 'user6@gmail.com',
  password: '11111111',
  nickname: 'オリバー',
  self_introduction: 'ウマ娘大好きです！',
  gender: 0,
  profile_image: open("#{Rails.root}/db/dummy_images/6.jpg")
)