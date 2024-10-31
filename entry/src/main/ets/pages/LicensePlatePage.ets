import { ActionBar } from '@abner/bar'
import { LicensePlateView } from '@abner/keyboard'
import router from '@ohos.router'

@Entry
@Component
struct LicensePlatePage {
  build() {
    Column() {
      ActionBar({
        title: "车牌键盘",
        leftText: "返回",
        onLeftClick: () => {
          router.back()
        }
      })
      LicensePlateView({
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