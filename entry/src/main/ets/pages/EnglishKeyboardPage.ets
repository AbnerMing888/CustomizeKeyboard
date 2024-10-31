import { ActionBar } from '@abner/bar'
import router from '@ohos.router'
import { EnglishKeyboardView } from '@abner/keyboard'

@Entry
@Component
struct EnglishKeyboardPage {
  build() {
    Column() {
      ActionBar({
        title: "英文键盘",
        leftText: "返回",
        onLeftClick: () => {
          router.back()
        },
      })
      EnglishKeyboardView({
        onItemClick: (item: string) => {
          //点击事件
          console.log("=====点击内容：" + item)
        },
        onDelete: () => {
          //点击删除
          console.log("=====点击删除")
        },
        onComplete: () => {
          //点击确定
          console.log("=====点击确定")
        },
        onChinese: () => {
          //点击中文切换
          console.log("=====点击中文切换")
        },
        onSpace: () => {
          //点击空格
          console.log("=====点击空格")
        },
        onNumber: () => {
          //点击数字
          console.log("=====点击数字")
        }
      })
    }
    .height('100%')
    .width('100%')
  }
}