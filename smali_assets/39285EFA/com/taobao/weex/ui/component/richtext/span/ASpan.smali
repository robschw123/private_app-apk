.class public Lcom/taobao/weex/ui/component/richtext/span/ASpan;
.super Landroid/text/style/ClickableSpan;
.source "ASpan.java"


# instance fields
.field private mInstanceId:Ljava/lang/String;

.field private mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "url"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/span/ASpan;->mInstanceId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/span/ASpan;->mURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/span/ASpan;->mInstanceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/span/ASpan;->mURL:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/utils/ATagUtil;->onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    return-void
.end method
