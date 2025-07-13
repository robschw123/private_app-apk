.class Lio/dcloud/feature/nativeObj/NativeView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView;->addInput(Lio/dcloud/feature/nativeObj/NativeView$Overlay;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;Lio/dcloud/feature/nativeObj/NativeView$Overlay;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-eqz p3, :cond_7

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x42

    if-ne v1, p2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_7

    .line 2
    :cond_0
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 3
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "javascript:"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 6
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p3, p3, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p3

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    .line 11
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    .line 16
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x2f

    invoke-interface {p2, v1, v2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    instance-of p3, p2, Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz p3, :cond_3

    .line 18
    check-cast p2, Lio/dcloud/common/DHInterface/IFrameView;

    .line 19
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p3

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 20
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return v0

    .line 25
    :cond_3
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 26
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return v0

    .line 30
    :cond_4
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 31
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return v0

    .line 35
    :cond_5
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_7

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "{\"text\":\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"id\":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$id:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string p1, "\"\""

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object v1, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 38
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 39
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object v2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_7
    return v0
.end method
