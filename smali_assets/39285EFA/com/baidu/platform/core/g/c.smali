.class public Lcom/baidu/platform/core/g/c;
.super Lcom/baidu/platform/base/e;
.source "PoiDetailShareRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 15
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/g/c;->a(Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;)V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://wapmap.baidu.com/s?tn=Detail&pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;->mUid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&smsf=3"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/mapapi/http/HttpClient;->getPhoneInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/g/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/platform/core/g/c;->b(Z)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/baidu/platform/core/g/c;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->p()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
