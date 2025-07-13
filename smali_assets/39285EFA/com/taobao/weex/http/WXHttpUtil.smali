.class public Lcom/taobao/weex/http/WXHttpUtil;
.super Ljava/lang/Object;
.source "WXHttpUtil.java"


# static fields
.field public static final KEY_USER_AGENT:Ljava/lang/String; = "user-agent"

.field private static sDefaultUA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assembleUserAgent()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/taobao/weex/http/WXHttpUtil;->sDefaultUA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Ldc/squareup/HttpConstants;->getDefaultUA()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/http/WXHttpUtil;->sDefaultUA:Ljava/lang/String;

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    invoke-static {v0}, Ldc/squareup/HttpConstants;->setUA(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Ldc/squareup/HttpConstants;->getDefaultUA()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/http/WXHttpUtil;->sDefaultUA:Ljava/lang/String;

    .line 49
    :cond_0
    sget-object v0, Lcom/taobao/weex/http/WXHttpUtil;->sDefaultUA:Ljava/lang/String;

    return-object v0
.end method

.method public static assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
