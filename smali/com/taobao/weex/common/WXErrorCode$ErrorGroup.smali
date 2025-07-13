.class public final enum Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;
.super Ljava/lang/Enum;
.source "WXErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

.field public static final enum JS:Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

.field public static final enum NATIVE:Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 342
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    const-string v1, "JS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;->JS:Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    .line 343
    new-instance v1, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;->NATIVE:Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 341
    sput-object v3, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;->$VALUES:[Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

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

    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 341
    const-class v0, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;
    .locals 1

    .line 341
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;->$VALUES:[Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    return-object v0
.end method
