.class public Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;
.super Ljava/lang/Object;
.source "RegisterCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/cache/RegisterCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleCache"
.end annotation


# instance fields
.field public final factory:Lcom/taobao/weex/bridge/ModuleFactory;

.field public final global:Z

.field public final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/weex/utils/cache/RegisterCache;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/cache/RegisterCache;Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "moduleName",
            "factory",
            "global"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->this$0:Lcom/taobao/weex/utils/cache/RegisterCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->name:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->factory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 162
    iput-boolean p4, p0, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->global:Z

    return-void
.end method
