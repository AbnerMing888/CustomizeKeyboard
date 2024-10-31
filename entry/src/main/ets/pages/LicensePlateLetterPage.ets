import { ActionBar } from '@abner/bar'
import router from '@ohos.router'
import { LicensePlateLetterView } from '@abner/keyboard'

@Entry
@Component
struct LicensePlateLetterPage {
  build() {
    Column() {
      ActionBar({
        title: "车牌字母键盘",
        leftText: "返回",
        onLeftClick: () => {
          router.back()
        },
      })
      LicensePlateLetterView({
        onItemClick: (item: string, index: number) => {
          //点击事件
          console.log("=====点击内容：" + item + "===点击索引：" + index)
        },
        onDelete: () => {
          //点击删除
          console.log("=====点击删除")
        }
      })
    }
    .height('100%')
    .width('100%')
  }
}