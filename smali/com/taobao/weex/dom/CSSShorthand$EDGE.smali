.class public final enum Lcom/taobao/weex/dom/CSSShorthand$EDGE;
.super Ljava/lang/Enum;
.source "CSSShorthand.java"

# interfaces
.implements Lcom/taobao/weex/dom/CSSShorthand$WXCSSProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/dom/CSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/dom/CSSShorthand$EDGE;",
        ">;",
        "Lcom/taobao/weex/dom/CSSShorthand$WXCSSProperty;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 30
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    new-instance v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    new-instance v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string v5, "LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    new-instance v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    new-instance v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string v9, "ALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 29
    sput-object v9, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->$VALUES:[Lcom/taobao/weex/dom/CSSShorthand$EDGE;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 29
    const-class v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .locals 1

    .line 29
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->$VALUES:[Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, [Lcom/taobao/weex/dom/CSSShorthand$EDGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    return-object v0
.end method
