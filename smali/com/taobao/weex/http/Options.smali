.class Lcom/taobao/weex/http/Options;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/http/Options$Builder;,
        Lcom/taobao/weex/http/Options$Type;
    }
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputType:Ljava/lang/String;

.field private isFirstIpv4:Z

.field private method:Ljava/lang/String;

.field private sslVerify:Z

.field private timeout:I

.field private tlsConfig:Lcom/alibaba/fastjson/JSONObject;

.field private type:Lcom/taobao/weex/http/Options$Type;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "url",
            "headers",
            "body",
            "type",
            "timeout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/http/Options$Type;",
            "I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    iput-object v0, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    const v0, 0xea60

    .line 37
    iput v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    .line 39
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    .line 48
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    .line 51
    iput-object p4, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    if-nez p6, :cond_0

    const p6, 0xea60

    .line 56
    :cond_0
    iput p6, p0, Lcom/taobao/weex/http/Options;->timeout:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "url",
            "headers",
            "body",
            "type",
            "timeout",
            "sslVerify",
            "sFirstIpv4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/http/Options$Type;",
            "IZZ)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    iput-object v0, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    const v0, 0xea60

    .line 37
    iput v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    .line 39
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    .line 67
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    .line 70
    iput-object p4, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    if-nez p6, :cond_0

    const p6, 0xea60

    .line 75
    :cond_0
    iput p6, p0, Lcom/taobao/weex/http/Options;->timeout:I

    .line 76
    iput-boolean p7, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    .line 77
    iput-boolean p8, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZLcom/taobao/weex/http/Options$1;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p8}, Lcom/taobao/weex/http/Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZ)V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->inputType:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getSslVerify()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    return v0
.end method

.method public getTlsConfig()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->tlsConfig:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getType()Lcom/taobao/weex/http/Options$Type;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstIpv4()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    return v0
.end method

.method public setInputType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->inputType:Ljava/lang/String;

    return-void
.end method

.method public setTlsConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tlsConfig"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->tlsConfig:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method
