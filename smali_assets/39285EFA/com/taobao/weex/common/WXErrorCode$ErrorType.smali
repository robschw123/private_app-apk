.class public final enum Lcom/taobao/weex/common/WXErrorCode$ErrorType;
.super Ljava/lang/Enum;
.source "WXErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/common/WXErrorCode$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXErrorCode$ErrorType;

.field public static final enum DEGRAD_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

.field public static final enum DOWN_LOAD_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

.field public static final enum JS_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

.field public static final enum NATIVE_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

.field public static final enum RENDER_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 334
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const-string v1, "JS_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->JS_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    .line 335
    new-instance v1, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const-string v3, "NATIVE_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->NATIVE_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    .line 336
    new-instance v3, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const-string v5, "RENDER_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->RENDER_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    .line 337
    new-instance v5, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const-string v7, "DEGRAD_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->DEGRAD_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    .line 338
    new-instance v7, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const-string v9, "DOWN_LOAD_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->DOWN_LOAD_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 333
    sput-object v9, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->$VALUES:[Lcom/taobao/weex/common/WXErrorCode$ErrorType;

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

    .line 333
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXErrorCode$ErrorType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 333
    const-class v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/common/WXErrorCode$ErrorType;
    .locals 1

    .line 333
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->$VALUES:[Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXErrorCode$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    return-object v0
.end method
