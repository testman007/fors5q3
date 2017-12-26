# README

## Usage

### Heroku
- 後台入口：https://restaurant-forum.herokuapp.com/admin
- 可使用 root@example.com 登入，密碼 12345678

### Git Clone 步驟

```
$ git clone https://github.com/ALPHACamp/web-online-restaurant-forum.git
$ bundle install
$ rails db:migrate
$ rails db:seed
$ rails dev:fake
```

## User stories

#### Phase 1: 後台建置
- 網站管理者可以登入網站後台
- 網站管理者可以在後台新增／瀏覽／編輯／刪除餐廳的基本資料
- 網站管理者可以在後台上傳餐廳照片
- 瀏覽餐廳資料時，會有分頁功能，頁只顯示 10 筆資料

#### Phase 2: 餐廳分類
- 管理員瀏覽餐廳資料時，可以看見餐廳的分頁
- 管理員新增或修改餐廳資料時，可以選擇分頁
- 管理員可以在後台分類總表上進行 CRUD
- 使用者可以瀏覽餐廳總表與個別餐廳資料
- 使用者可以在餐廳總表上，依分類來篩選餐廳資料

#### Phase 3: 留下評論
- 使用者可以在餐廳個別資料下留評論
- 使用者可以在餐廳個別資料下瀏覽其他人的評論
- 管理者可以刪除任何人的評論
