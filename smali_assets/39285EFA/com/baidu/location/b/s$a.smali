.class Lcom/baidu/location/b/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/baidu/location/b/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/location/b/s;

    invoke-direct {v0}, Lcom/baidu/location/b/s;-><init>()V

    sput-object v0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    return-void
.end method

.method static synthetic a()Lcom/baidu/location/b/s;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    return-object v0
.end method
