.class Lcom/taobao/weex/ui/component/DCTextArea$3;
.super Ljava/lang/Object;
.source "DCTextArea.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCTextArea;->watchLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field line:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCTextArea;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCTextArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 149
    iput p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->line:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count1",
            "after"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    .line 157
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result p1

    iget p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->line:I

    if-eq p1, p2, :cond_3

    .line 158
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->line:I

    .line 159
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getExtendedPaddingTop()I

    move-result p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getExtendedPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 161
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getLayout()Landroid/text/Layout;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result p2

    add-int/2addr p2, p1

    int-to-float p2, p2

    const/4 p3, 0x1

    if-nez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->access$200(Lcom/taobao/weex/ui/component/DCTextArea;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p2

    int-to-float p2, p2

    const p4, 0x3fb33333    # 1.4f

    mul-float p2, p2, p4

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p4

    invoke-static {p2, p4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p2

    add-float/2addr p2, p1

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->access$200(Lcom/taobao/weex/ui/component/DCTextArea;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    .line 166
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstanceId()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCTextArea;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 167
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstanceId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifyLayout(Ljava/lang/String;)Z

    .line 168
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstanceId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->forceLayout(Ljava/lang/String;)V

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->access$300(Lcom/taobao/weex/ui/component/DCTextArea;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 171
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    const/4 p4, 0x3

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(I)V

    .line 172
    iget p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->line:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "lineCount"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p4

    invoke-static {p2, p4}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    const-string v0, "height"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p4, "heightRpx"

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    const-string p3, "detail"

    .line 176
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    const-string p3, "linechange"

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/ui/component/DCTextArea;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
