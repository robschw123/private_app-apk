.class Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;
.super Ljava/lang/Object;
.source "FavoritePois.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapsdkplatform/comapi/favrite/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method private constructor <init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;)V
    .locals 2

    .line 630
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->a:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 632
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->c:J

    const-wide/16 v0, 0x0

    .line 633
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;Lcom/baidu/mapsdkplatform/comapi/favrite/b;)V
    .locals 0

    .line 630
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;Ljava/lang/String;)V
    .locals 0

    .line 630
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 636
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->b:Ljava/lang/String;

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->d:J

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Z
    .locals 0

    .line 630
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->c()Z

    move-result p0

    return p0
.end method

.method private b()Z
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Z
    .locals 0

    .line 630
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Ljava/lang/String;
    .locals 0

    .line 630
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
