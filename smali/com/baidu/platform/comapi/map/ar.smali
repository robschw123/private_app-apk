.class public Lcom/baidu/platform/comapi/map/ar;
.super Lcom/baidu/platform/comapi/map/ap;
.source "TrackStyle.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)Lcom/baidu/platform/comapi/map/ar;
    .locals 0

    .line 20
    iput p1, p0, Lcom/baidu/platform/comapi/map/ar;->a:I

    return-object p0
.end method

.method public e()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/baidu/platform/comapi/map/ar;->a:I

    return v0
.end method
