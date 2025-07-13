.class public final enum Lcom/taobao/weex/http/Options$Type;
.super Ljava/lang/Enum;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/http/Options$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/http/Options$Type;

.field public static final enum base64:Lcom/taobao/weex/http/Options$Type;

.field public static final enum json:Lcom/taobao/weex/http/Options$Type;

.field public static final enum jsonp:Lcom/taobao/weex/http/Options$Type;

.field public static final enum text:Lcom/taobao/weex/http/Options$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 125
    new-instance v0, Lcom/taobao/weex/http/Options$Type;

    const-string v1, "json"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    new-instance v1, Lcom/taobao/weex/http/Options$Type;

    const-string v3, "text"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    new-instance v3, Lcom/taobao/weex/http/Options$Type;

    const-string v5, "jsonp"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    new-instance v5, Lcom/taobao/weex/http/Options$Type;

    const-string v7, "base64"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/http/Options$Type;->base64:Lcom/taobao/weex/http/Options$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/taobao/weex/http/Options$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 124
    sput-object v7, Lcom/taobao/weex/http/Options$Type;->$VALUES:[Lcom/taobao/weex/http/Options$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 124
    const-class v0, Lcom/taobao/weex/http/Options$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/http/Options$Type;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/http/Options$Type;
    .locals 1

    .line 124
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->$VALUES:[Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, [Lcom/taobao/weex/http/Options$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/http/Options$Type;

    return-object v0
.end method
