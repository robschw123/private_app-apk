.class final enum Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
.super Ljava/lang/Enum;
.source "WXWebViewModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/module/WXWebViewModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/ui/module/WXWebViewModule$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 30
    new-instance v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string v1, "reload"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 31
    new-instance v1, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string v3, "goBack"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 32
    new-instance v3, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string v5, "goForward"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 33
    new-instance v5, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string v7, "postMessage"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 29
    sput-object v7, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->$VALUES:[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
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
    const-class v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    .locals 1

    .line 29
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->$VALUES:[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    return-object v0
.end method
