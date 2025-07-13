.class public Lcom/baidu/platform/comapi/map/b/b;
.super Ljava/lang/Object;
.source "GestureController.java"


# instance fields
.field a:Lcom/baidu/platform/comapi/map/b/a/a$a;

.field private b:Lcom/baidu/platform/comapi/map/MapController;

.field private c:Lcom/baidu/platform/comapi/map/b/a/b;

.field private d:Lcom/baidu/platform/comapi/map/b/a/a;


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/baidu/platform/comapi/map/b/c;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/b/c;-><init>(Lcom/baidu/platform/comapi/map/b/b;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/b/b;->a:Lcom/baidu/platform/comapi/map/b/a/a$a;

    .line 27
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/b;->b:Lcom/baidu/platform/comapi/map/MapController;

    .line 28
    new-instance v0, Lcom/baidu/platform/comapi/map/b/a/b;

    new-instance v1, Lcom/baidu/platform/comapi/map/b/b/b;

    invoke-direct {v1, p1}, Lcom/baidu/platform/comapi/map/b/b/b;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/b/a/b;-><init>(Lcom/baidu/platform/comapi/map/b/a/b$a;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/b/b;->c:Lcom/baidu/platform/comapi/map/b/a/b;

    .line 29
    new-instance v0, Lcom/baidu/platform/comapi/map/b/a/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b;->a:Lcom/baidu/platform/comapi/map/b/a/a$a;

    invoke-direct {v0, v1, p1}, Lcom/baidu/platform/comapi/map/b/a/a;-><init>(Lcom/baidu/platform/comapi/map/b/a/a$a;Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/b/b;->d:Lcom/baidu/platform/comapi/map/b/a/a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/b/b;)Lcom/baidu/platform/comapi/map/MapController;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/b/b;->b:Lcom/baidu/platform/comapi/map/MapController;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b;->c:Lcom/baidu/platform/comapi/map/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/b/a/b;->a(Landroid/view/MotionEvent;)V

    .line 34
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b;->d:Lcom/baidu/platform/comapi/map/b/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/b/a/a;->a(Landroid/view/MotionEvent;)V

    return-void
.end method
