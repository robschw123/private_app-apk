.class Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;
.super Ljava/lang/Object;
.source "WXTimeInputHelper.java"

# interfaces
.implements Lcom/taobao/weex/appfram/pickers/DatePickerImpl$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickTime(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$target:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$target",
            "val$component"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$target:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPick(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$target:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper$2;->val$component:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->performOnChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
