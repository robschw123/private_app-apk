.class Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions$1;
.super Ljava/lang/Object;
.source "UniBoxShadowOptions.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions$IParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;-><init>(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;


# direct methods
.method constructor <init>(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions$1;->this$0:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 60
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions$1;->this$0:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    invoke-static {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->access$000(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    iput p1, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->spread:F

    const-string p1, "UniBoxShadowOptions"

    const-string v0, "Experimental box-shadow attribute: spread"

    .line 61
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
