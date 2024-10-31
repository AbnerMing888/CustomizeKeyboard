import router from '@ohos.router'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Button("车牌键盘")
        .onClick(() => {
          router.pushUrl({ url: "pages/LicensePlatePage" })
        })

      Button("车牌字母键盘")
        .margin({ top: 20 })
        .onClick(() => {
          router.pushUrl({ url: "pages/LicensePlateLetterPage" })
        })

      Button("股票代码键盘")
        .margin({ top: 20 })
        .onClick(() => {
          router.pushUrl({ url: "pages/StockCodePage" })
        })

      Button("英文键盘")
        .margin({ top: 20 })
        .onClick(() => {
          router.pushUrl({ url: "pages/EnglishKeyboardPage" })
        })
    }.width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Center)
  }
}