.class Lio/dcloud/feature/nativeObj/TitleNView$15;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/feature/ui/nativeui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->showCapsuleMenu(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;

.field final synthetic val$array:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->val$array:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initCancelText(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$1000(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :goto_0
    return-void
.end method

.method public initTextItem(ILandroid/widget/TextView;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$800(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$800(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getFontSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getFontType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getFontType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object v1, p3

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/TitleNView;->access$900(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "type"

    const-string v1, ""

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "interval"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const-string p3, "#e5e5e5"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 p2, 0xa

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    .line 13
    :cond_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 17
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p3}, Lio/dcloud/feature/nativeObj/TitleNView;->access$1000(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "bold"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    .line 18
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 20
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 22
    :goto_1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$1100(Lio/dcloud/feature/nativeObj/TitleNView;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onDismiss(I)Z
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 1
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "type"

    const-string v2, ""

    .line 3
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "interval"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public onItemClick(I)V
    .locals 8

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$800(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, p1, :cond_3

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$800(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;

    if-eqz p1, :cond_5

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v6, v6, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    aput-object v6, v5, v3

    const-string v7, "ui"

    aput-object v7, v5, v2

    const-string v7, "findWebview"

    aput-object v7, v5, v1

    new-array v1, v1, [Ljava/lang/String;

    .line 5
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getWebviewUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v1, v5, v2

    const/16 v1, 0xa

    .line 6
    invoke-interface {v0, v4, v1, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    instance-of v2, v0, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v2, :cond_1

    .line 10
    move-object v1, v0

    check-cast v1, Lio/dcloud/common/DHInterface/IWebview;

    :cond_1
    if-nez v1, :cond_2

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    .line 15
    :cond_2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getOnclick()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$600(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, p1, :cond_5

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "type"

    const-string v4, ""

    .line 20
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "interval"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const-string v0, "id"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "appid"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$15;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    aput-object v0, p1, v3

    aput-object v4, p1, v2

    .line 29
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x4d

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method
