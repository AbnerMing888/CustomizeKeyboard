import { ActionBar } from '@abner/bar'
import router from '@ohos.router'
import { StockCodeView } from '@abner/keyboard'

@Entry
@Component
struct StockCodePage {
  build() {
    Column() {
      ActionBar({
        title: "股票代码键盘",
        leftText: "返回",
        onLeftClick: () => {
          router.back()
        },
      })
      StockCodeView({
        onItemClick: (item: string, index: number) => {
          //点击事件
          console.log("=====点击内容：" + item + "===点击索引：" + index)
        },
        onDelete: () => {
          //点击删除
          console.log("=====点击删除")
        },
        onHide: () => {
          //点击隐藏
          console.log("=====点击隐藏")
        },
        onClear: () => {
          //点击清空
          console.log("=====点击清空")
        },
        onConfirm: () => {
          //点击确认
          console.log("=====点击确认")
        }
      })
    }
    .height('100%')
    .width('100%')
  }
}