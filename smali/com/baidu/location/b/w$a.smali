.class Lcom/baidu/location/b/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/baidu/location/b/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/baidu/location/b/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/location/b/w;-><init>(Lcom/baidu/location/b/w$1;)V

    sput-object v0, Lcom/baidu/location/b/w$a;->a:Lcom/baidu/location/b/w;

    return-void
.end method

.method static synthetic a()Lcom/baidu/location/b/w;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/w$a;->a:Lcom/baidu/location/b/w;

    return-object v0
.end method
