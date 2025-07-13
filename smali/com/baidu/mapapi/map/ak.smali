.class Lcom/baidu/mapapi/map/ak;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WearMapView.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/baidu/mapapi/map/WearMapView;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/WearMapView;Landroid/view/View;)V
    .locals 0

    .line 1353
    iput-object p1, p0, Lcom/baidu/mapapi/map/ak;->b:Lcom/baidu/mapapi/map/WearMapView;

    iput-object p2, p0, Lcom/baidu/mapapi/map/ak;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/baidu/mapapi/map/ak;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
