.class public final Lcom/baidu/mapsdkplatform/comapi/map/v;
.super Ljava/lang/Object;
.source "MapOptions.java"


# instance fields
.field public a:Lcom/baidu/mapsdkplatform/comapi/map/x;

.field public b:Z

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->b:Z

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->c:I

    .line 9
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->d:Z

    .line 10
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->e:Z

    .line 11
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->f:Z

    .line 12
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/mapsdkplatform/comapi/map/v;
    .locals 0

    .line 25
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->c:I

    return-object p0
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/x;)Lcom/baidu/mapsdkplatform/comapi/map/v;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    return-object p0
.end method

.method public a(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->b:Z

    return-object p0
.end method

.method public b(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->d:Z

    return-object p0
.end method

.method public c(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->e:Z

    return-object p0
.end method

.method public d(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->f:Z

    return-object p0
.end method

.method public e(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/v;->g:Z

    return-object p0
.end method
